--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:create_altitude_datum
create table altitude_datum
(code							varchar2(25 char)	constraint nn_altitude_datum_pk not null
,name							varchar2(16 char)
,sort_order						number
,description					varchar2(255 char)
,valid_flag						varchar2(1 char)
,constraint altitude_datum_pk
  primary key (code)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table altitude_datum cascade constraints purge;

--changeset drsteini:create_altitude_method
create table altitude_method
(code							varchar2(25 char)	constraint nn_altitude_method_pk not null
,name							varchar2(16 char)
,sort_order						number
,description					varchar2(255 char)
,valid_flag						varchar2(1 char)
,constraint altitude_method_pk
  primary key (code)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table altitude_method cascade constraints purge;
 
--changeset drsteini:drop_aqfr
drop table aqfr cascade constraints purge;
--rollback create table aqfr
--rollback (state_cd						varchar2(2 char)    constraint nn_aqfr_pk not null
--rollback ,aqfr_cd							varchar2(8 char)
--rollback ,aqfr_nm							varchar2(70 char)
--rollback ,aqfr_md							varchar2(8 char)
--rollback ,constraint aqfr_pk
--rollback   primary key (state_cd, aqfr_cd)
--rollback ) parallel 4 compress pctfree 0 nologging;

--changeset drsteini:create_aqfr
create table aqfr
(country_cd						varchar2(2 char)	constraint nn_aqfr_pk_country not null
,state_cd						varchar2(2 char)	constraint nn_aqfr_pk_state not null
,aqfr_cd						varchar2(8 char)	constraint nn_aqfr_pk_aqfr not null
,aqfr_nm						varchar2(70 char)
,aqfr_md						varchar2(8 char)
,constraint aqfr_pk
  primary key (country_cd, state_cd, aqfr_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table aqfr cascade constraints purge;

--changeset drsteini:create_aquifer_type_code
create table aquifer_type_code
(code							varchar2(25 char)	constraint nn_aquifer_type_code_pk not null
,name							varchar2(16 char)
,sort_order						number
,description					varchar2(255 char)
,valid_flag						varchar2(1 char)
,constraint aquifer_type_code_pk
  primary key (code)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table aquifer_type_code cascade constraints purge;

--changeset drsteini:create_cit_meth
create table cit_meth
(cit_meth_id					number				constraint nn_cit_meth_pk not null
,meth_cd						varchar2(5 char)
,cit_nm							varchar2(50 char)
,cit_meth_no					varchar2(32 char)
,meth_src_cd					varchar2(8 char)
,cit_meth_init_nm				varchar2(8 char)
,cit_meth_init_dt				date
,cit_meth_rev_nm				varchar2(8 char)
,cit_meth_rev_dt				date
,constraint cit_meth_pk
  primary key (cit_meth_id)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table cit_meth cascade constraints purge;

--changeset drsteini:create_lat_long_accuracy
create table lat_long_accuracy
(code							varchar2(25 char)	constraint nn_lat_long_accuracy_pk not null
,name							varchar2(16 char)
,sort_order						number
,description					varchar2(255 char)
,valid_flag						varchar2(1 char)
,constraint lat_long_accuracy_pk
  primary key (code)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table lat_long_accuracy cascade constraints purge;

--changeset drsteini:create_lat_long_datum
create table lat_long_datum
(code							varchar2(25 char)	constraint nn_lat_long_datum_pk not null
,name							varchar2(16 char)
,sort_order						number
,description					varchar2(255 char)
,valid_flag						varchar2(1 char)
,constraint lat_long_datum_pk
  primary key (code)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table lat_long_datum cascade constraints purge;

--changeset drsteini:create_lat_long_method
create table lat_long_method
(code							varchar2(25 char)	constraint nn_lat_long_method_pk not null
,name							varchar2(16 char)
,sort_order						number
,description					varchar2(255 char)
,valid_flag						varchar2(1 char)
,constraint lat_long_method_pk
  primary key (code)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table lat_long_method cascade constraints purge;

--changeset drsteini:drop_lu_parm
drop table lu_parm cascade constraints purge;
--rollback create table lu_parm
--rollback (parm_cd							varchar2(5 char)
--rollback ,parm_nm							varchar2(29 char)
--rollback ,parm_unt_tx						varchar2(10 char)
--rollback ,parm_seq_nu						number
--rollback ,parm_seq_grp_cd					varchar2(3 char)
--rollback ,parm_ds							varchar2(170 char)
--rollback ,parm_medium_tx					varchar2(30 char)
--rollback ,parm_frac_tx					varchar2(24 char)
--rollback ,parm_temp_tx					varchar2(12 char)
--rollback ,parm_stat_tx					varchar2(25 char)
--rollback ,parm_tm_tx						varchar2(12 char)
--rollback ,parm_wt_tx						varchar2(15 char)
--rollback ,parm_size_tx					varchar2(64 char)
--rollback ,parm_entry_fg					varchar2(1 char)
--rollback ,parm_public_fg					varchar2(1 char)
--rollback ,parm_neg_fg						varchar2(1 char)
--rollback ,parm_zero_fg					varchar2(1 char)
--rollback ,parm_null_fg					varchar2(1 char)
--rollback ,parm_ts_fg						varchar2(1 char)
--rollback ,parm_init_dt					date
--rollback ,parm_init_nm					varchar2(16 char)
--rollback ,parm_rev_dt						date
--rollback ,parm_rev_nm						varchar2(16 char)
--rollback ) parallel 4 compress pctfree 0 nologging;

--changeset drsteini:drop_lu_parm_alias
drop table lu_parm_alias cascade constraints purge;
--rollback create table lu_parm_alias
--rollback (parm_cd							varchar2(5 char)
--rollback ,parm_alias_cd					varchar2(12 char)
--rollback ,parm_alias_nm					varchar2(1200 char)
--rollback ,parm_alias_init_dt				date
--rollback ,parm_alias_init_nm				varchar2(16 char)
--rollback ,parm_alias_rev_dt				date
--rollback ,parm_alias_rev_nm				varchar2(16 char)
--rollback ) parallel 4 compress pctfree 0 nologging;

--changeset drsteini:drop_lu_parm_meth
drop table lu_parm_meth cascade constraints purge;
--rollback create table lu_parm_meth
--rollback (parm_cd						varchar2(5 char)
--rollback ,meth_cd						varchar2(5 char)
--rollback ,parm_meth_lgcy_cd			varchar2(1 char)
--rollback ,parm_meth_rnd_tx			varchar2(10 char)
--rollback ,parm_meth_init_nm			varchar2(8 char)
--rollback ,parm_meth_init_dt			date
--rollback ,parm_meth_rev_nm			varchar2(8 char)
--rollback ,parm_meth_rev_dt			date
--rollback ,parm_meth_vld_fg			varchar2(1 char)
--rollback ) parallel 4 compress pctfree 0 nologging;

--changeset drsteini:drop_lu_parm_seq_grp_cd
drop table lu_parm_seq_grp_cd cascade constraints purge;
--rollback create table lu_parm_seq_grp_cd
--rollback (parm_seq_grp_cd					varchar2(3 char)
--rollback ,parm_seq_grp_srt_nu				number
--rollback ,parm_seq_grp_nm					varchar2(32 char)
--rollback ,parm_seq_grp_ds					varchar2(512 char)
--rollback ) parallel 4 compress pctfree 0 nologging;

--changeset drsteini:drop_lu_tz
drop table lu_tz cascade constraints purge;
--rollback create table lu_tz
--rollback (tz_cd							varchar2(6 char)	constraint nn_lu_tz_pk not null
--rollback ,tz_nu							number
--rollback ,tz_nm							varchar2(40 char)
--rollback ,tz_ds							varchar2(300 char)
--rollback ,tz_utc_offset_tm				varchar2(6 char)
--rollback ,tz_dst_cd						varchar2(6 char)
--rollback ,tz_dst_nm						varchar2(70 char)
--rollback ,tz_dst_utc_offset_tm			varchar2(6 char)
--rollback ,constraint lu_tz_pk
--rollback   primary key (tz_cd)
--rollback ) parallel 4 compress pctfree 0 nologging;

--changeset drsteini:drop_nat_aqfr
drop table nat_aqfr cascade constraints purge;
--rollback create table nat_aqfr
--rollback (country_cd						varchar2(2 char)		constraint nn_nat_aqfr_pk_a not null
--rollback ,state_cd						varchar2(2 char)		constraint nn_nat_aqfr_pk_b not null
--rollback ,state_nm						varchar2(53 char)
--rollback ,nat_aqfr_cd						varchar2(10 char)	constraint nn_nat_aqfr_pk_c not null
--rollback ,nat_aqfr_nm						varchar2(64 char)
--rollback ,constraint nat_aqfr_pk
--rollback   primary key (country_cd, state_cd, nat_aqfr_cd)
--rollback ) parallel 4 compress pctfree 0 nologging;

--changeset drsteini:create_nat_aqfr
create table nat_aqfr
(country_cd						varchar2(2 char)	constraint nn_nat_aqfr_pk_country not null
,state_cd						varchar2(2 char)	constraint nn_nat_aqfr_pk_state not null
,nat_aqfr_cd					varchar2(10 char)	constraint nn_nat_aqfr_pk_nat_aqfr not null
,nat_aqfr_nm					varchar2(64 char)
,constraint nat_aqfr_pk
  primary key (country_cd, state_cd, nat_aqfr_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table nat_aqfr cascade constraints purge;

--changeset drsteini:drop_nwis_misc_lookups
drop table nwis_misc_lookups cascade constraints purge;
--rollback create table nwis_misc_lookups
--rollback (category						varchar2(45 char)	constraint nn_nwis_misc_lookups_pk_a not null
--rollback ,nwis_code						varchar2(15 char)	constraint nn_nwis_misc_lookups_pk_b not null
--rollback ,nwis_name						varchar2(75 char)
--rollback ,nwis_desc						varchar2(255 char)
--rollback ,last_upd_date					date
--rollback ,inferred_value					varchar2(12 char)
--rollback ,inferred_units					varchar2(12 char)
--rollback ,constraint nwis_misc_lookups_pk
--rollback   primary key (category, nwis_code)
--rollback ) parallel 4 compress pctfree 0 nologging;

--changeset drsteini:drop_parm
drop table parm cascade constraints purge;
--rollback create table parm
--rollback (parm_unt_tx						varchar2(10 char)
--rollback ,parm_frac_tx					varchar2(24 char)
--rollback ,parm_medium_tx					varchar2(30 char)
--rollback ,parm_stat_tx					varchar2(25 char)
--rollback ,parm_wt_tx						varchar2(15 char)
--rollback ,parm_temp_tx					varchar2(12 char)
--rollback ,parm_tm_tx						varchar2(12 char)
--rollback ,parm_cd							varchar2(5 char)
--rollback ,parm_size_tx					varchar2(64 char)
--rollback ,parm_seq_grp_nm					varchar2(32 char)
--rollback ,srsname							varchar2(1200 char)
--rollback ,srsid							varchar2(1200 char)
--rollback ,casrn							varchar2(1200 char)
--rollback ,multiplier						varchar2(6 char)
--rollback ) parallel 4 compress pctfree 0 nologging;

--changeset drsteini:create_parm
create table parm
(parm_cd						varchar2(5 char)	constraint nn_parm_pk not null
,parm_nm						varchar2(29 char)
,parm_rmk_tx					varchar2(256 char)
,parm_unt_tx					varchar2(10 char)
,parm_seq_nu					number
,parm_seq_grp_cd				varchar2(3 char)
,parm_ds						varchar2(170 char)
,parm_medium_tx					varchar2(30 char)
,parm_frac_tx					varchar2(24 char)
,parm_temp_tx					varchar2(12 char)
,parm_stat_tx					varchar2(25 char)
,parm_tm_tx						varchar2(12 char)
,parm_wt_tx						varchar2(15 char)
,parm_size_tx					varchar2(64 char)
,parm_entry_fg					varchar2(1 char)
,parm_public_fg					varchar2(1 char)
,parm_neg_fg					varchar2(1 char)
,parm_zero_fg					varchar2(1 char)
,parm_null_fg					varchar2(1 char)
,parm_ts_fg						varchar2(1 char)
,parm_init_dt					date
,parm_init_nm					varchar2(16 char)
,parm_rev_dt					date
,parm_rev_nm					varchar2(16 char)
,parm_seq_grp_nm				varchar2(32 char)
,srsname						varchar2(1200 char)
,srsid							varchar2(1200 char)
,casrn							varchar2(1200 char)
,multiplier						varchar2(6 char)
,constraint parm_pk
  primary key (parm_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table parm cascade constraints purge;

--changeset drsteini:create_parm_alias
create table parm_alias
(parm_cd						varchar2(5 char)	constraint nn_parm_alias_pk_parm not null
,parm_alias_cd					varchar2(12 char)	constraint nn_parm_alias_pk_alias not null
,parm_alias_nm					varchar2(1200 char)
,parm_alias_init_dt				date
,parm_alias_init_nm				varchar2(16 char)
,parm_alias_rev_dt				date
,parm_alias_rev_nm				varchar2(16 char)
,constraint parm_alias_pk
  primary key (parm_cd, parm_alias_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table parm_alias cascade constraints purge;

--changeset drsteini:create_parm_meth
create table parm_meth
(parm_cd						varchar2(5 char)	constraint nn_parm_meth_parm not null
,meth_cd						varchar2(5 char)
,parm_meth_lgcy_cd				varchar2(1 char)
,parm_meth_rnd_tx				varchar2(10 char)
,parm_meth_init_nm				varchar2(8 char)
,parm_meth_init_dt				date
,parm_meth_rev_nm				varchar2(8 char)
,parm_meth_rev_dt				date
,parm_meth_vld_fg				varchar2(1 char)
,multiplier						varchar2(6 char)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table parm_meth cascade constraints purge;

--changeset drsteini:drop_state_fips
drop table state_fips cascade constraints purge;
--rollback create table state_fips
--rollback (state_cd						varchar2(2 char)
--rollback ,state_fips						number
--rollback ) parallel 4 compress pctfree 0 nologging;

--changeset drsteini:drop_val_qual_cd
drop table val_qual_cd cascade constraints purge;
--rollback create table val_qual_cd
--rollback (val_qual_cd					varchar2(1 char)	constraint nn_val_qual_cd_pk not null
--rollback ,val_qual_srt_nu				number
--rollback ,val_qual_vld_fg				varchar2(1 char)
--rollback ,val_qual_nm					varchar2(66 char)
--rollback ,val_qual_ds					varchar2(512 char)
--rollback ,constraint val_qual_cd_pk
--rollback   primary key (val_qual_cd)
--rollback ) parallel 4 compress pctfree 0 nologging;

--changeset drsteini:create_val_qual_cd
create table val_qual_cd
(val_qual_cd					varchar2(1 char)	constraint nn_val_qual_cd_pk not null
,val_qual_tp					varchar2(5 char)
,val_qual_srt_nu				number
,val_qual_vld_fg				varchar2(1 char)
,val_qual_nm					varchar2(66 char)
,val_qual_ds					varchar2(512 char)
,constraint val_qual_cd_pk
  primary key (val_qual_cd)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table val_qual_cd cascade constraints purge;

--changeset drsteini:drop_z_cit_meth
drop table z_cit_meth cascade constraints purge;
--rollback create table z_cit_meth
--rollback (cit_meth_id					number				constraint nn_z_cit_meth_pk not null
--rollback ,meth_cd						varchar2(5 char)
--rollback ,cit_nm							varchar2(50 char)
--rollback ,cit_meth_no					varchar2(32 char)
--rollback ,meth_src_cd					varchar2(8 char)
--rollback ,cit_meth_init_nm				varchar2(8 char)
--rollback ,cit_meth_init_dt				date
--rollback ,cit_meth_rev_nm				varchar2(8 char)
--rollback ,cit_meth_rev_dt				date
--rollback ,stg_load_datetime				date
--rollback ,constraint z_cit_meth_pk
--rollback   primary key (cit_meth_id)
--rollback ) parallel 4 compress pctfree 0 nologging;

--changeset drsteini:drop_z_parm_meth
drop table z_parm_meth cascade constraints purge;
--rollback create table z_parm_meth
--rollback (parm_cd						varchar2(5 char)
--rollback ,meth_cd						varchar2(5 char)
--rollback ,multiplier						varchar2(6 char)
--rollback ) parallel 4 compress pctfree 0 nologging;

