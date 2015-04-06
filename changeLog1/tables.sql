--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1TablesAA
create table aqfr
(state_cd  						char(2 byte)        constraint nn_aqfr_pk not null
,aqfr_cd   						varchar2(8 byte)
,aqfr_nm   						varchar2(70 byte)
,aqfr_md   						varchar2(8 byte)
,constraint aqfr_pk
  primary key (state_cd, aqfr_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table aqfr cascade constraints purge;

--changeset drsteini:1TablesAB
create table body_part
(body_part_id  					number(10)          constraint nn_body_part_pk not null
,body_part_nm  					varchar2(32 byte)
,constraint body_part_pk
  primary key (body_part_id)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table body_part cascade constraints purge;

--changeset drsteini:1TablesAC
create table country
(country_cd  					char(2 byte)        constraint nn_country_pk not null
,country_nm  					varchar2(48 byte)                 
,constraint country_pk
  primary key (country_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table country cascade constraints purge;

--changeset drsteini:1TablesAD
create table county
(country_cd          			char(2 byte)        constraint nn_county_pk_a not null
,state_cd            			char(2 byte)        constraint nn_county_pk_b not null
,county_cd           			char(3 byte)        constraint nn_county_pk_c not null
,county_nm           			varchar2(48 byte)         
,county_max_lat_va   			char(11 byte)             
,county_min_lat_va   			char(11 byte)             
,county_max_long_va  			char(12 byte)             
,county_min_long_va  			char(12 byte)             
,county_max_alt_va   			char(8 byte)              
,county_min_alt_va   			char(8 byte)              
,county_md           			char(8 byte)              
,constraint county_pk
  primary key (country_cd, state_cd, county_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table county cascade constraints purge;

--changeset drsteini:1TablesAE
create table fxd
(parm_cd      					char(5 byte)        constraint nn_fxd_pk_a not null
,fxd_va       					number              constraint nn_fxd_pk_b not null
,fxd_nm       					varchar2(20 byte)
,fxd_tx       					varchar2(80 byte)                
,fxd_init_dt  					date
,fxd_init_nm  					varchar2(16 byte)                
,fxd_rev_dt   					date
,fxd_rev_nm   					varchar2(16 byte)                
,constraint fxd_pk
  primary key (parm_cd, fxd_va)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table fxd cascade constraints purge;

--changeset drsteini:1TablesAF
create table hyd_cond_cd
(hyd_cond_cd      				char(1 byte)        constraint nn_hyd_cond_cd_pk not null
,hyd_cond_srt_nu  				number(10)
,hyd_cond_vld_fg  				char(1 byte)
,hyd_cond_nm      				varchar2(64 byte)
,hyd_cond_ds      				varchar2(512 byte)
,constraint hyd_cond_cd_pk
  primary key (hyd_cond_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table hyd_cond_cd cascade constraints purge;

--changeset drsteini:1TablesAG
create table hyd_event_cd
(hyd_event_cd      				char(1 byte)        constraint nn_hyd_event_cd_pk not null
,hyd_event_srt_nu  				number(10)
,hyd_event_vld_fg  				char(1 byte)
,hyd_event_nm      				varchar2(64 byte)
,hyd_event_ds      				varchar2(512 byte)
,constraint hyd_event_cd_pk
  primary key (hyd_event_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table hyd_event_cd cascade constraints purge;

--changeset drsteini:1TablesAH
create table lu_parm
(parm_cd          				varchar2(5 char)             
,parm_nm          				varchar2(29 char)            
,parm_unt_tx      				varchar2(10 char)
,parm_seq_nu      				number(11)
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
,parm_seq_grp_srt_nu  			number(10)               
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
(meth_cd            			varchar2(5 byte)    constraint nn_meth_pk not null
,meth_tp            			varchar2(4 byte)
,meth_nm            			varchar2(32 byte)
,meth_ds            			varchar2(256 byte)
,meth_rnd_owner_cd  			varchar2(8 byte)
,discipline_cd      			varchar2(2 byte)
,meth_init_nm       			varchar2(8 byte)
,meth_init_dt       			date
,meth_rev_nm        			varchar2(8 byte)
,meth_rev_dt        			date
,constraint meth_pk
  primary key (meth_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table meth cascade constraints purge;

--changeset drsteini:1TablesAN
create table nat_aqfr
(country_cd   					char(2 byte)        constraint nn_nat_aqfr_pk_a not null
,state_cd     					char(2 byte)        constraint nn_nat_aqfr_pk_b not null
,state_nm     					varchar2(53 byte)                
,nat_aqfr_cd  					varchar2(10 byte)   constraint nn_nat_aqfr_pk_c not null
,nat_aqfr_nm  					varchar2(64 byte)                
,constraint nat_aqfr_pk
  primary key (country_cd, state_cd, nat_aqfr_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table nat_aqfr cascade constraints purge;

--changeset drsteini:1TablesAO
create table wqp_nemi_nwis_crosswalk
(analytical_procedure_source	varchar2(100 byte)
,analytical_procedure_id		varchar2(100 byte)
,citation_method_num			varchar2(100 byte)
,method_id						number
,wqp_source						varchar2(100 byte)
,method_type					varchar2(100 byte)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table wqp_nemi_nwis_crosswalk cascade constraints purge;

--changeset drsteini:1TablesAP
create table nwis_district_cds_by_host
(host_name        				varchar2(60 byte)
,district_cd      				varchar2(3 byte)
,state_name       				varchar2(60 byte)
,state_postal_cd  				char(2 byte)
,last_upd_date    				date
) parallel 4 compress pctfree 0 nologging;
--rollback drop table nwis_district_cds_by_host cascade constraints purge;

--changeset drsteini:1TablesAQ
create table nwis_misc_lookups
(category        				varchar2(45 byte)	constraint nn_nwis_misc_lookups_pk_a not null
,nwis_code       				varchar2(15 byte)	constraint nn_nwis_misc_lookups_pk_b not null
,nwis_name       				varchar2(75 byte)
,nwis_desc       				varchar2(255 byte)
,last_upd_date   				date
,inferred_value  				varchar2(12 byte)
,inferred_units  				varchar2(12 byte)
,constraint nwis_misc_lookups_pk
  primary key (category, nwis_code)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table nwis_misc_lookups cascade constraints purge;

--changeset drsteini:1TablesAR
create table nwis_wqx_medium_cd
(legacy_nwis_medium_cd  		char(1 byte)
,nwis_medium_cd         		varchar2(3 byte)
,nwis_medium_nm         		varchar2(75 byte)
,wqx_act_med_nm         		varchar2(30 byte)
,wqx_act_med_sub        		varchar2(64 byte)
,load_date              		date
) parallel 4 compress pctfree 0 nologging;
--rollback drop table nwis_wqx_medium_cd cascade constraints purge;

--changeset drsteini:1TablesAS
create table nwis_wqx_rpt_lev_cd
(rpt_lev_cd      				varchar2(6 byte)              
,rpt_lev_nm      				varchar2(64 byte)
,wqx_rpt_lev_nm  				varchar2(60 byte)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table nwis_wqx_rpt_lev_cd cascade constraints purge;

--changeset drsteini:1TablesAT
create table proto_org
(proto_org_cd       			varchar2(8 byte)    constraint nn_proto_org_pk not null
,proto_org_nm       			varchar2(59 byte)
,proto_org_fv_cd    			varchar2(5 byte)
,proto_org_vld_fg   			char(1 byte)
,proto_org_init_nm  			varchar2(8 byte)
,proto_org_init_dt  			date
,proto_org_rev_nm   			varchar2(8 byte)
,proto_org_rev_dt   			date
,constraint proto_org_pk
  primary key (proto_org_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table proto_org cascade constraints purge;

--changeset drsteini:1TablesAU
create table qw_result
(sample_id           			number(11)
,site_id             			number(11)
,record_no           			varchar2(8 byte)
,result_web_cd       			varchar2(1 byte)
,parameter_cd        			varchar2(5 byte)
,meth_cd             			varchar2(5 byte)
,result_va           			varchar2(12 byte)
,result_unrnd_va     			varchar2(12 byte)
,result_rd           			varchar2(1 byte)
,rpt_lev_va          			varchar2(12 byte)
,rpt_lev_cd          			varchar2(6 byte)
,lab_std_va          			varchar2(11 byte)
,remark_cd           			varchar2(1 byte)
,val_qual_tx         			varchar2(5 byte)
,null_val_qual_cd    			varchar2(1 byte)
,qa_cd               			varchar2(1 byte)
,dqi_cd              			varchar2(1 byte)
,anl_ent_cd          			varchar2(8 byte)
,anl_set_no          			varchar2(12 byte)
,anl_dt              			varchar2(19 byte)
,prep_set_no         			varchar2(12 byte)
,prep_dt             			varchar2(19 byte)
,result_field_cm_tx  			varchar2(640 byte)
,result_lab_cm_tx    			varchar2(640 byte)
,result_md           			date
,qw_result_md        			date
) parallel 4 compress pctfree 0 nologging;
--rollback drop table qw_result cascade constraints purge;

--changeset drsteini:1TablesAV
create table qw_sample
(sample_id                    	number(11)
,site_id                      	number(11)
,record_no                    	varchar2(8 byte)
,nwis_host                    	varchar2(12 byte)
,db_no                        	varchar2(2 byte)
,qw_db_no                     	varchar2(2 byte)
,sample_web_cd                	varchar2(1 byte)
,sample_start_dt              	date
,sample_start_display_dt      	varchar2(19 byte)
,sample_start_sg              	varchar2(1 byte)
,sample_end_dt                	varchar2(19 byte)
,sample_end_display_dt        	varchar2(19 byte)
,sample_end_sg                	varchar2(1 byte)
,sample_utc_start_dt          	date
,sample_utc_start_display_dt  	varchar2(19 byte)
,sample_utc_end_dt            	varchar2(19 byte)
,sample_utc_end_display_dt    	varchar2(19 byte)
,sample_start_time_datum_cd   	varchar2(6 byte)
,medium_cd                    	varchar2(3 byte)
,tu_id                        	varchar2(11 byte)
,body_part_id                 	varchar2(11 byte)
,nwis_sample_id               	varchar2(11 byte)
,lab_no                       	varchar2(7 byte)
,project_cd                   	varchar2(9 byte)
,aqfr_cd                      	varchar2(8 byte)
,samp_type_cd                 	varchar2(1 byte)
,sample_lab_cm_tx             	varchar2(300 byte)
,sample_field_cm_tx           	varchar2(300 byte)
,coll_ent_cd                  	varchar2(8 byte)
,anl_stat_cd                  	varchar2(1 byte)
,anl_src_cd                   	varchar2(1 byte)
,anl_type_tx                  	varchar2(27 byte)
,hyd_cond_cd                  	varchar2(1 byte)
,hyd_event_cd                 	varchar2(1 byte)
,tm_datum_rlbty_cd            	varchar2(1 byte)
,sample_md                    	date
,qw_sample_md                 	date
) parallel 4 compress pctfree 0 nologging;
--rollback drop table qw_sample cascade constraints purge;

--changeset drsteini:1TablesAW
create table sitefile
(site_id                        number(10)
,agency_cd                      varchar2(5 byte)
,site_no                        varchar2(15 byte)
,nwis_host                      varchar2(12 byte)
,db_no                          varchar2(2 byte)
,station_nm                     varchar2(50 char)
,dec_lat_va                     number(16,8)
,dec_long_va                    number(16,8)
,coord_meth_cd                  varchar2(1 byte)
,coord_acy_cd                   varchar2(1 byte)
,district_cd                    varchar2(3 byte)
,country_cd                     varchar2(2 byte)
,state_cd                       varchar2(2 byte)
,county_cd                      varchar2(3 byte)
,land_net_ds                    varchar2(23 byte)
,map_scale_fc                   varchar2(7 byte)
,alt_va                         varchar2(8 byte)
,alt_meth_cd                    varchar2(1 byte)
,alt_acy_va                     varchar2(3 byte)
,alt_datum_cd                   varchar2(10 byte)
,huc_cd                         varchar2(16 byte)
,basin_cd                       varchar2(2 byte)
,site_tp_cd                     varchar2(7 byte)
,site_rmks_tx                   varchar2(50 byte)
,drain_area_va                  varchar2(8 byte)
,contrib_drain_area_va          varchar2(8 byte)
,construction_dt                varchar2(8 byte)
,aqfr_type_cd                   varchar2(1 byte)
,aqfr_cd                        varchar2(8 byte)
,nat_aqfr_cd                    varchar2(10 byte)
,well_depth_va                  varchar2(8 byte)
,hole_depth_va                  varchar2(8 byte)
,site_web_cd                    varchar2(1 byte)
,dec_coord_datum_cd             varchar2(10 byte)
,site_cn                        varchar2(8 byte)
,site_cr                        date
,site_mn                        varchar2(8 byte)
,site_md                        date
) parallel 4 compress pctfree 0 nologging;
--rollback drop table sitefile cascade constraints purge;

--changeset drsteini:1TablesAX
create table site_tp
(site_tp_cd       				varchar2(7 byte)             
,site_tp_srt_nu   				number(10)                   
,site_tp_vld_fg   				char(1 byte)                 
,site_tp_prim_fg  				char(1 byte)                 
,site_tp_nm       				varchar2(10 byte)            
,site_tp_ln       				varchar2(40 byte)            
,site_tp_ds       				varchar2(1200 byte)          
) parallel 4 compress pctfree 0 nologging;
--rollback drop table site_tp cascade constraints purge;

--changeset drsteini:1TablesAY
create table state
(country_cd         			char(2 byte)        constraint nn_state_pk_a not null
,state_cd           			char(2 byte)        constraint nn_state_pk_b not null
,state_nm           			varchar2(53 byte)          
,state_post_cd      			char(2 byte)               
,state_max_lat_va   			char(11 byte)
,state_min_lat_va   			char(11 byte)
,state_max_long_va  			char(12 byte)
,state_min_long_va  			char(12 byte)
,state_max_alt_va   			char(8 byte)
,state_min_alt_va   			char(8 byte)
,state_md           			char(8 byte)               
,constraint state_pk
  primary key (country_cd, state_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table state cascade constraints purge;

--changeset drsteini:1TablesAZ
create table state_fips
(state_cd    					char(2 byte)
,state_fips  					integer
) parallel 4 compress pctfree 0 nologging;
--rollback drop table state_fips cascade constraints purge;

--changeset drsteini:1TablesBA
create table temp_series_catalog
(site_id            			number(11)
,data_type_cd       			varchar2(2 byte)
,parm_cd            			varchar2(5 byte)
,stat_cd            			varchar2(5 byte)
,loc_nm             			varchar2(64 byte)
,medium_grp_cd      			varchar2(3 byte)
,parm_grp_cd        			varchar2(3 byte)
,srs_id             			number(11)
,access_cd          			number(4)
,begin_date         			varchar2(10 byte)
,end_date           			varchar2(10 byte)
,count_nu           			number(8)
,series_catalog_md  			date
) parallel 4 compress pctfree 0 nologging;
--rollback drop table temp_series_catalog cascade constraints purge;

--changeset drsteini:1TablesBB
create table tu
(tu_id             				number(10)          constraint nn_tu_pk not null
,tu_1_cd           				char(1 byte)
,tu_1_nm           				varchar2(35 byte)
,tu_2_cd           				char(1 byte)
,tu_2_nm           				varchar2(35 byte)
,tu_3_cd           				varchar2(7 byte)
,tu_3_nm           				varchar2(35 byte)
,tu_4_cd           				varchar2(7 byte)
,tu_4_nm           				varchar2(35 byte)
,tu_unnm_cd        				char(1 byte)
,tu_use_cd         				varchar2(12 byte)
,tu_unaccp_rsn_tx  				varchar2(24 byte)
,tu_cred_rat_tx    				varchar2(40 byte)
,tu_cmplt_rat_cd   				varchar2(10 byte)
,tu_curr_rat_cd    				varchar2(7 byte)
,tu_phyl_srt_nu    				number(5)
,tu_cr             				date
,tu_par_id         				number(10)
,tu_tax_auth_id    				number(10)
,tu_hybr_auth_id   				number(10)
,tu_king_id        				number(5)
,tu_rnk_id         				number(5)
,tu_md             				date
,constraint tu_pk
  primary key (tu_id)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table tu cascade constraints purge;

--changeset drsteini:1TablesBC
create table val_qual_cd
(val_qual_cd      				char(1 byte)     	constraint nn_val_qual_cd_pk not null
,val_qual_srt_nu  				number(10)
,val_qual_vld_fg  				char(1 byte)
,val_qual_nm      				varchar2(64 byte)
,val_qual_ds      				varchar2(512 byte)
,constraint val_qual_cd_pk
  primary key (val_qual_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table val_qual_cd cascade constraints purge;

--changeset drsteini:1TablesBD
create table z_cit_meth
(cit_meth_id        			integer             constraint nn_z_cit_meth_pk not null
,meth_cd            			varchar2(5 byte)           
,cit_nm             			varchar2(50 byte)
,cit_meth_no        			varchar2(32 byte)
,meth_src_cd        			varchar2(8 byte)
,cit_meth_init_nm   			varchar2(8 byte)           
,cit_meth_init_dt   			date
,cit_meth_rev_nm    			varchar2(8 byte)           
,cit_meth_rev_dt    			date
,stg_load_datetime  			date
,constraint z_cit_meth_pk
  primary key (cit_meth_id)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table z_cit_meth cascade constraints purge;
