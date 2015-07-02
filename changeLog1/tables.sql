--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1TablesAA
create table aqfr
(state_cd  						varchar2(2 char)    constraint nn_aqfr_pk not null
,aqfr_cd   						varchar2(8 char)
,aqfr_nm   						varchar2(70 char)
,aqfr_md   						varchar2(8 char)
,constraint aqfr_pk
  primary key (state_cd, aqfr_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table aqfr cascade constraints purge;

--changeset drsteini:1TablesAB
create table body_part
(body_part_id  					number          	constraint nn_body_part_pk not null
,body_part_nm  					varchar2(32 char)
,constraint body_part_pk
  primary key (body_part_id)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table body_part cascade constraints purge;

--changeset drsteini:1TablesAC
create table country
(country_cd  					varchar2(2 char)    constraint nn_country_pk not null
,country_nm  					varchar2(48 char)                 
,constraint country_pk
  primary key (country_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table country cascade constraints purge;

--changeset drsteini:1TablesAD
create table county
(country_cd          			varchar2(2 char)    constraint nn_county_pk_a not null
,state_cd            			varchar2(2 char)    constraint nn_county_pk_b not null
,county_cd           			varchar2(3 char)    constraint nn_county_pk_c not null
,county_nm           			varchar2(48 char)         
,county_max_lat_va   			varchar2(11 char)             
,county_min_lat_va   			varchar2(11 char)             
,county_max_long_va  			varchar2(12 char)             
,county_min_long_va  			varchar2(12 char)             
,county_max_alt_va   			varchar2(8 char)              
,county_min_alt_va   			varchar2(8 char)              
,county_md           			varchar2(8 char)              
,constraint county_pk
  primary key (country_cd, state_cd, county_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table county cascade constraints purge;

--changeset drsteini:1TablesAE
create table fxd
(parm_cd      					varchar2(5 char)    constraint nn_fxd_pk_a not null
,fxd_va       					number              constraint nn_fxd_pk_b not null
,fxd_nm       					varchar2(20 char)
,fxd_tx       					varchar2(80 char)                
,fxd_init_dt  					date
,fxd_init_nm  					varchar2(16 char)                
,fxd_rev_dt   					date
,fxd_rev_nm   					varchar2(16 char)                
,constraint fxd_pk
  primary key (parm_cd, fxd_va)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table fxd cascade constraints purge;

--changeset drsteini:1TablesAF
create table hyd_cond_cd
(hyd_cond_cd      				varchar2(1 char)    constraint nn_hyd_cond_cd_pk not null
,hyd_cond_srt_nu  				number
,hyd_cond_vld_fg  				varchar2(1 char)
,hyd_cond_nm      				varchar2(64 char)
,hyd_cond_ds      				varchar2(512 char)
,constraint hyd_cond_cd_pk
  primary key (hyd_cond_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table hyd_cond_cd cascade constraints purge;

--changeset drsteini:1TablesAG
create table hyd_event_cd
(hyd_event_cd      				varchar2(1 char)    constraint nn_hyd_event_cd_pk not null
,hyd_event_srt_nu  				number
,hyd_event_vld_fg  				varchar2(1 char)
,hyd_event_nm      				varchar2(64 char)
,hyd_event_ds      				varchar2(512 char)
,constraint hyd_event_cd_pk
  primary key (hyd_event_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table hyd_event_cd cascade constraints purge;

--changeset drsteini:1TablesAH
create table lu_parm
(parm_cd          				varchar2(5 char)             
,parm_nm          				varchar2(29 char)            
,parm_unt_tx      				varchar2(10 char)
,parm_seq_nu      				number
,parm_seq_grp_cd  				varchar2(3 char)
,parm_ds          				varchar2(170 char)
,parm_medium_tx   				varchar2(30 char)
,parm_frac_tx     				varchar2(24 char)
,parm_temp_tx     				varchar2(12 char)
,parm_stat_tx     				varchar2(25 char)
,parm_tm_tx       				varchar2(12 char)
,parm_wt_tx       				varchar2(15 char)
,parm_size_tx     				varchar2(64 char)
,parm_entry_fg    				varchar2(1 char)
,parm_public_fg   				varchar2(1 char)
,parm_neg_fg      				varchar2(1 char)
,parm_zero_fg     				varchar2(1 char)
,parm_null_fg     				varchar2(1 char)
,parm_ts_fg       				varchar2(1 char)
,parm_init_dt     				date
,parm_init_nm     				varchar2(16 char)
,parm_rev_dt      				date
,parm_rev_nm      				varchar2(16 char)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table lu_parm cascade constraints purge;

--changeset drsteini:1TablesAI
create table lu_parm_alias
(parm_cd             			varchar2(5 char)          
,parm_alias_cd       			varchar2(12 char)         
,parm_alias_nm       			varchar2(1200 char)       
,parm_alias_init_dt  			date
,parm_alias_init_nm  			varchar2(16 char)         
,parm_alias_rev_dt   			date
,parm_alias_rev_nm   			varchar2(16 char)         
) parallel 4 compress pctfree 0 nologging;
--rollback drop table lu_parm_alias cascade constraints purge;

--changeset drsteini:1TablesAJ
create table lu_parm_meth
(parm_cd            			varchar2(5 char)           
,meth_cd            			varchar2(5 char)
,parm_meth_lgcy_cd  			varchar2(1 char)
,parm_meth_rnd_tx   			varchar2(10 char)
,parm_meth_init_nm  			varchar2(8 char)
,parm_meth_init_dt  			date
,parm_meth_rev_nm   			varchar2(8 char)
,parm_meth_rev_dt   			date
,parm_meth_vld_fg   			varchar2(1 char)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table lu_parm_meth cascade constraints purge;

--changeset drsteini:1TablesAK
create table lu_parm_seq_grp_cd
(parm_seq_grp_cd      			varchar2(3 char)         
,parm_seq_grp_srt_nu  			number          
,parm_seq_grp_nm      			varchar2(32 char)        
,parm_seq_grp_ds      			varchar2(512 char)       
) parallel 4 compress pctfree 0 nologging;
--rollback drop table lu_parm_seq_grp_cd cascade constraints purge;

--changeset drsteini:1TablesAL
create table lu_tz
(tz_cd                 			varchar2(6 char)	constraint nn_lu_tz_pk not null
,tz_nu                 			number
,tz_nm                 			varchar2(40 char)
,tz_ds                 			varchar2(300 char)
,tz_utc_offset_tm      			varchar2(6 char)
,tz_dst_cd             			varchar2(6 char)
,tz_dst_nm             			varchar2(70 char)
,tz_dst_utc_offset_tm  			varchar2(6 char)
,constraint lu_tz_pk
  primary key (tz_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table lu_tz cascade constraints purge;

--changeset drsteini:1TablesAM
create table meth
(meth_cd            			varchar2(5 char)    constraint nn_meth_pk not null
,meth_tp            			varchar2(4 char)
,meth_nm            			varchar2(32 char)
,meth_ds            			varchar2(256 char)
,meth_rnd_owner_cd  			varchar2(8 char)
,discipline_cd      			varchar2(2 char)
,meth_init_nm       			varchar2(8 char)
,meth_init_dt       			date
,meth_rev_nm        			varchar2(8 char)
,meth_rev_dt        			date
,constraint meth_pk
  primary key (meth_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table meth cascade constraints purge;

--changeset drsteini:1TablesAN
create table nat_aqfr
(country_cd   					char(2 char)        constraint nn_nat_aqfr_pk_a not null
,state_cd     					char(2 char)        constraint nn_nat_aqfr_pk_b not null
,state_nm     					varchar2(53 char)                
,nat_aqfr_cd  					varchar2(10 char)   constraint nn_nat_aqfr_pk_c not null
,nat_aqfr_nm  					varchar2(64 char)                
,constraint nat_aqfr_pk
  primary key (country_cd, state_cd, nat_aqfr_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table nat_aqfr cascade constraints purge;

--changeset drsteini:1TablesAO
create table wqp_nemi_nwis_crosswalk
(analytical_procedure_source	varchar2(100 char)
,analytical_procedure_id		varchar2(100 char)
,citation_method_num			varchar2(100 char)
,method_id						number
,wqp_source						varchar2(100 char)
,method_type					varchar2(100 char)
,nemi_url						varchar2(4000 char)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table wqp_nemi_nwis_crosswalk cascade constraints purge;

--changeset drsteini:1TablesAP
create table nwis_district_cds_by_host
(host_name        				varchar2(60 char)
,district_cd      				varchar2(3 char)
,state_name       				varchar2(60 char)
,state_postal_cd  				varchar2(2 char)
,last_upd_date    				date
) parallel 4 compress pctfree 0 nologging;
--rollback drop table nwis_district_cds_by_host cascade constraints purge;

--changeset drsteini:1TablesAQ
create table nwis_misc_lookups
(category        				varchar2(45 char)	constraint nn_nwis_misc_lookups_pk_a not null
,nwis_code       				varchar2(15 char)	constraint nn_nwis_misc_lookups_pk_b not null
,nwis_name       				varchar2(75 char)
,nwis_desc       				varchar2(255 char)
,last_upd_date   				date
,inferred_value  				varchar2(12 char)
,inferred_units  				varchar2(12 char)
,constraint nwis_misc_lookups_pk
  primary key (category, nwis_code)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table nwis_misc_lookups cascade constraints purge;

--changeset drsteini:1TablesAR
create table nwis_wqx_medium_cd
(legacy_nwis_medium_cd  		varchar2(1 char)
,nwis_medium_cd         		varchar2(3 char)
,nwis_medium_nm         		varchar2(75 char)
,wqx_act_med_nm         		varchar2(30 char)
,wqx_act_med_sub        		varchar2(64 char)
,load_date              		date
) parallel 4 compress pctfree 0 nologging;
--rollback drop table nwis_wqx_medium_cd cascade constraints purge;

--changeset drsteini:1TablesAS
create table nwis_wqx_rpt_lev_cd
(rpt_lev_cd      				varchar2(6 char)              
,rpt_lev_nm      				varchar2(64 char)
,wqx_rpt_lev_nm  				varchar2(60 char)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table nwis_wqx_rpt_lev_cd cascade constraints purge;

--changeset drsteini:1TablesAT
create table proto_org
(proto_org_cd       			varchar2(8 char)    constraint nn_proto_org_pk not null
,proto_org_nm       			varchar2(59 char)
,proto_org_fv_cd    			varchar2(5 char)
,proto_org_vld_fg   			varchar2(1 char)
,proto_org_init_nm  			varchar2(8 char)
,proto_org_init_dt  			date
,proto_org_rev_nm   			varchar2(8 char)
,proto_org_rev_dt   			date
,constraint proto_org_pk
  primary key (proto_org_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table proto_org cascade constraints purge;

--changeset drsteini:1TablesAU
create table qw_result
(sample_id           			number
,site_id             			number
,record_no           			varchar2(8 char)
,result_web_cd       			varchar2(1 char)
,parameter_cd        			varchar2(5 char)
,meth_cd             			varchar2(5 char)
,result_va           			varchar2(12 char)
,result_unrnd_va     			varchar2(12 char)
,result_rd           			varchar2(1 char)
,rpt_lev_va          			varchar2(12 char)
,rpt_lev_cd          			varchar2(6 char)
,lab_std_va          			varchar2(11 char)
,remark_cd           			varchar2(1 char)
,val_qual_tx         			varchar2(5 char)
,null_val_qual_cd    			varchar2(1 char)
,qa_cd               			varchar2(1 char)
,dqi_cd              			varchar2(1 char)
,anl_ent_cd          			varchar2(8 char)
,anl_set_no          			varchar2(12 char)
,anl_dt              			varchar2(19 char)
,prep_set_no         			varchar2(12 char)
,prep_dt             			varchar2(19 char)
,result_field_cm_tx  			varchar2(640 char)
,result_lab_cm_tx    			varchar2(640 char)
,result_md           			date
,qw_result_md        			date
) parallel 4 compress pctfree 0 nologging;
--rollback drop table qw_result cascade constraints purge;

--changeset drsteini:1TablesAV
create table qw_sample
(sample_id                    	number
,site_id                      	number
,record_no                    	varchar2(8 char)
,nwis_host                    	varchar2(12 char)
,db_no                        	varchar2(2 char)
,qw_db_no                     	varchar2(2 char)
,sample_web_cd                	varchar2(1 char)
,sample_start_dt              	date
,sample_start_display_dt      	varchar2(19 char)
,sample_start_sg              	varchar2(1 char)
,sample_end_dt                	varchar2(19 char)
,sample_end_display_dt        	varchar2(19 char)
,sample_end_sg                	varchar2(1 char)
,sample_utc_start_dt          	date
,sample_utc_start_display_dt  	varchar2(19 char)
,sample_utc_end_dt            	varchar2(19 char)
,sample_utc_end_display_dt    	varchar2(19 char)
,sample_start_time_datum_cd   	varchar2(6 char)
,medium_cd                    	varchar2(3 char)
,tu_id                        	varchar2(11 char)
,body_part_id                 	varchar2(11 char)
,nwis_sample_id               	varchar2(11 char)
,lab_no                       	varchar2(7 char)
,project_cd                   	varchar2(9 char)
,aqfr_cd                      	varchar2(8 char)
,samp_type_cd                 	varchar2(1 char)
,sample_lab_cm_tx             	varchar2(300 char)
,sample_field_cm_tx           	varchar2(300 char)
,coll_ent_cd                  	varchar2(8 char)
,anl_stat_cd                  	varchar2(1 char)
,anl_src_cd                   	varchar2(1 char)
,anl_type_tx                  	varchar2(27 char)
,hyd_cond_cd                  	varchar2(1 char)
,hyd_event_cd                 	varchar2(1 char)
,tm_datum_rlbty_cd            	varchar2(1 char)
,sample_md                    	date
,qw_sample_md                 	date
) parallel 4 compress pctfree 0 nologging;
--rollback drop table qw_sample cascade constraints purge;

--changeset drsteini:1TablesAW
create table sitefile
(site_id                        number
,agency_cd                      varchar2(5 char)
,site_no                        varchar2(15 char)
,nwis_host                      varchar2(12 char)
,db_no                          varchar2(2 char)
,station_nm                     varchar2(50 char)
,dec_lat_va                     number
,dec_long_va                    number
,coord_meth_cd                  varchar2(1 char)
,coord_acy_cd                   varchar2(1 char)
,district_cd                    varchar2(3 char)
,country_cd                     varchar2(2 char)
,state_cd                       varchar2(2 char)
,county_cd                      varchar2(3 char)
,land_net_ds                    varchar2(23 char)
,map_scale_fc                   varchar2(7 char)
,alt_va                         varchar2(8 char)
,alt_meth_cd                    varchar2(1 char)
,alt_acy_va                     varchar2(3 char)
,alt_datum_cd                   varchar2(10 char)
,huc_cd                         varchar2(16 char)
,basin_cd                       varchar2(2 char)
,site_tp_cd                     varchar2(7 char)
,site_rmks_tx                   varchar2(50 char)
,drain_area_va                  varchar2(8 char)
,contrib_drain_area_va          varchar2(8 char)
,construction_dt                varchar2(8 char)
,aqfr_type_cd                   varchar2(1 char)
,aqfr_cd                        varchar2(8 char)
,nat_aqfr_cd                    varchar2(10 char)
,well_depth_va                  varchar2(8 char)
,hole_depth_va                  varchar2(8 char)
,site_web_cd                    varchar2(1 char)
,dec_coord_datum_cd             varchar2(10 char)
,site_cn                        varchar2(8 char)
,site_cr                        date
,site_mn                        varchar2(8 char)
,site_md                        date
) parallel 4 compress pctfree 0 nologging;
--rollback drop table sitefile cascade constraints purge;

--changeset drsteini:1TablesAX
create table site_tp
(site_tp_cd       				varchar2(7 char)             
,site_tp_srt_nu   				number                 
,site_tp_vld_fg   				varchar2(1 char)                 
,site_tp_prim_fg  				varchar2(1 char)                 
,site_tp_nm       				varchar2(10 char)            
,site_tp_ln       				varchar2(40 char)            
,site_tp_ds       				varchar2(1200 char)          
) parallel 4 compress pctfree 0 nologging;
--rollback drop table site_tp cascade constraints purge;

--changeset drsteini:1TablesAY
create table state
(country_cd         			varchar2(2 char)    constraint nn_state_pk_a not null
,state_cd           			varchar2(2 char)    constraint nn_state_pk_b not null
,state_nm           			varchar2(53 char)          
,state_post_cd      			varchar2(2 char)               
,state_max_lat_va   			varchar2(11 char)
,state_min_lat_va   			varchar2(11 char)
,state_max_long_va  			varchar2(12 char)
,state_min_long_va  			varchar2(12 char)
,state_max_alt_va   			varchar2(8 char)
,state_min_alt_va   			varchar2(8 char)
,state_md           			varchar2(8 char)               
,constraint state_pk
  primary key (country_cd, state_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table state cascade constraints purge;

--changeset drsteini:1TablesAZ
create table state_fips
(state_cd    					varchar2(2 char)
,state_fips  					number
) parallel 4 compress pctfree 0 nologging;
--rollback drop table state_fips cascade constraints purge;

--changeset drsteini:1TablesBA
create table temp_series_catalog
(site_id            			number
,data_type_cd       			varchar2(2 char)
,parm_cd            			varchar2(5 char)
,stat_cd            			varchar2(5 char)
,loc_nm             			varchar2(64 char)
,medium_grp_cd      			varchar2(3 char)
,parm_grp_cd        			varchar2(3 char)
,srs_id             			number
,access_cd          			number
,begin_date         			varchar2(10 char)
,end_date           			varchar2(10 char)
,count_nu           			number
,series_catalog_md  			date
) parallel 4 compress pctfree 0 nologging;
--rollback drop table temp_series_catalog cascade constraints purge;

--changeset drsteini:1TablesBB
create table tu
(tu_id             				number          	constraint nn_tu_pk not null
,tu_1_cd           				varchar2(1 char)
,tu_1_nm           				varchar2(35 char)
,tu_2_cd           				varchar2(1 char)
,tu_2_nm           				varchar2(35 char)
,tu_3_cd           				varchar2(7 char)
,tu_3_nm           				varchar2(35 char)
,tu_4_cd           				varchar2(7 char)
,tu_4_nm           				varchar2(35 char)
,tu_unnm_cd        				varchar2(1 char)
,tu_use_cd         				varchar2(12 char)
,tu_unaccp_rsn_tx  				varchar2(24 char)
,tu_cred_rat_tx    				varchar2(40 char)
,tu_cmplt_rat_cd   				varchar2(10 char)
,tu_curr_rat_cd    				varchar2(7 char)
,tu_phyl_srt_nu    				number
,tu_cr             				date
,tu_par_id         				number
,tu_tax_auth_id    				number
,tu_hybr_auth_id   				number
,tu_king_id        				number
,tu_rnk_id         				number
,tu_md             				date
,constraint tu_pk
  primary key (tu_id)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table tu cascade constraints purge;

--changeset drsteini:1TablesBC
create table val_qual_cd
(val_qual_cd      				varchar2(1 char)    constraint nn_val_qual_cd_pk not null
,val_qual_srt_nu  				number
,val_qual_vld_fg  				varchar2(1 char)
,val_qual_nm      				varchar2(66 char)
,val_qual_ds      				varchar2(512 char)
,constraint val_qual_cd_pk
  primary key (val_qual_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table val_qual_cd cascade constraints purge;

--changeset drsteini:1TablesBD
create table z_cit_meth
(cit_meth_id        			number             	constraint nn_z_cit_meth_pk not null
,meth_cd            			varchar2(5 char)           
,cit_nm             			varchar2(50 char)
,cit_meth_no        			varchar2(32 char)
,meth_src_cd        			varchar2(8 char)
,cit_meth_init_nm   			varchar2(8 char)           
,cit_meth_init_dt   			date
,cit_meth_rev_nm    			varchar2(8 char)           
,cit_meth_rev_dt    			date
,stg_load_datetime  			date
,constraint z_cit_meth_pk
  primary key (cit_meth_id)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table z_cit_meth cascade constraints purge;

--changeset drsteini:1TablesBF
create table z_parm_meth
(parm_cd						varchar2(5 char)
,meth_cd						varchar2(5 char)
,multiplier						varchar2(6 char)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table z_parm_meth cascade constraints purge;

--changeset drsteini:1TablesBG
create table parm
(parm_unt_tx					varchar2(10 char)
,parm_frac_tx					varchar2(24 char)
,parm_medium_tx					varchar2(30 char)
,parm_stat_tx					varchar2(25 char)
,parm_wt_tx						varchar2(15 char)
,parm_temp_tx					varchar2(12 char)
,parm_tm_tx						varchar2(12 char)
,parm_cd						varchar2(5 char)
,parm_size_tx					varchar2(64 char)
,parm_seq_grp_nm				varchar2(32 char)
,srsname						varchar2(1200 char)
,srsid							varchar2(1200 char)
,casrn							varchar2(1200 char)
,multiplier						varchar2(6 char)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table parm cascade constraints purge;

--changeset drsteini:1TablesBH
create table meth_with_cit
(meth_cd						varchar2(5 char)
,meth_nm						varchar2(32 char)
,cit_nm							varchar2(50 char)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table meth_with_cit cascade constraints purge;

--changeset drsteini:1TablesBI
create table sample_parameter
(sample_id						number
,v71999							varchar2(12 char)
,v50280							varchar2(12 char)
,v72015							varchar2(12 char)
,v82047							varchar2(12 char)
,v72016							varchar2(12 char)
,v82048							varchar2(12 char)
,v00003							varchar2(12 char)
,v00098							varchar2(12 char)
,v78890							varchar2(12 char)
,v78891							varchar2(12 char)
,v82398							varchar2(12 char)
,v84164							varchar2(12 char)
,v71999_fxd_nm					varchar2(20 char)
,v82398_fxd_tx					varchar2(80 char)
,v84164_fxd_tx					varchar2(80 char)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table sample_parameter cascade constraints purge;

--changeset drsteini:1TablesBJ
create table nawqa_sites
(nwis_host_nm                   varchar2(42 byte)
,db_no                          varchar2(6 byte)
,agency_cd                      varchar2(15 byte)
,site_no                        varchar2(45 byte)
,station_nm                     varchar2(150 byte)
,station_ix                     varchar2(150 byte)
,lat_va                         varchar2(33 byte)
,long_va                        varchar2(36 byte)
,dec_lat_va                     varchar2(120 byte)
,dec_long_va                    varchar2(120 byte)
,coord_meth_cd                  varchar2(3 byte)
,coord_acy_cd                   varchar2(3 byte)
,coord_datum_cd                 varchar2(30 byte)
,district_cd                    varchar2(9 byte)
,land_net_ds                    varchar2(69 byte)
,map_nm                         varchar2(60 byte)
,country_cd                     varchar2(6 byte)
,state_cd                       varchar2(6 byte)
,county_cd                      varchar2(9 byte)
,mcd_cd                         varchar2(15 byte)
,map_scale_fc                   varchar2(21 byte)
,alt_va                         varchar2(24 byte)
,alt_meth_cd                    varchar2(3 byte)
,alt_acy_va                     varchar2(9 byte)
,alt_datum_cd                   varchar2(30 byte)
,huc_cd                         varchar2(48 byte)
,agency_use_cd                  varchar2(3 byte)
,basin_cd                       varchar2(6 byte)
,site_tp_cd                     varchar2(21 byte)
,topo_cd                        varchar2(3 byte)
,data_types_cd                  varchar2(90 byte)
,instruments_cd                 varchar2(90 byte)
,site_rmks_tx                   varchar2(150 byte)
,inventory_dt                   varchar2(24 byte)
,drain_area_va                  varchar2(24 byte)
,contrib_drain_area_va          varchar2(24 byte)
,tz_cd                          varchar2(18 byte)
,local_time_fg                  varchar2(3 byte)
,gw_file_cd                     varchar2(90 byte)
,construction_dt                varchar2(24 byte)
,reliability_cd                 varchar2(3 byte)
,aqfr_cd                        varchar2(24 byte)
,nat_aqfr_cd                    varchar2(30 byte)
,site_use_1_cd                  varchar2(3 byte)
,site_use_2_cd                  varchar2(3 byte)
,site_use_3_cd                  varchar2(3 byte)
,water_use_1_cd                 varchar2(3 byte)
,water_use_2_cd                 varchar2(3 byte)
,water_use_3_cd                 varchar2(3 byte)
,nat_water_use_cd               varchar2(6 byte)
,aqfr_type_cd                   varchar2(3 byte)
,well_depth_va                  varchar2(24 byte)
,hole_depth_va                  varchar2(24 byte)
,depth_src_cd                   varchar2(3 byte)
,project_no                     varchar2(36 byte)
,site_web_cd                    varchar2(3 byte)
,site_cn                        varchar2(312 byte)
,site_cr                        timestamp(6)        not null
,site_mn                        varchar2(312 byte)
,site_md                        timestamp(6)        not null
,deprecated_fg                  varchar2(3 byte)
,site_ld                        varchar2(111 byte)
,nawqa_site_fg                  char(3 byte)
,nasqan_nmn_site_fg             char(3 byte)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table nawqa_sites cascade constraints purge;
