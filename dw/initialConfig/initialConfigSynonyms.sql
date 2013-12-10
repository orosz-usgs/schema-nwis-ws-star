--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:0SchemaSynonymsAA
create or replace synonym fa_station for fa_station_00000;
--rollback drop synonym fa_station;

--changeset drsteini:0SchemaSynonymsAB
create or replace synonym fa_regular_result for fa_regular_result_00000;
--rollback drop synonym fa_regular_result;

--changeset drsteini:0SchemaSynonymsAC
create or replace synonym series_catalog for series_catalog_00000;       
--rollback drop synonym series_catalog;

--changeset drsteini:0SchemaSynonymsAD
create or replace synonym qwportal_summary for qwportal_summary_00000;
--rollback drop synonym qwportal_summary;

--changeset drsteini:0SchemaSynonymsAE
create or replace synonym nwis_station_sum for nwis_station_sum_00000;
--rollback drop synonym nwis_station_sum;

--changeset drsteini:0SchemaSynonymsAF
create or replace synonym nwis_result_sum for nwis_result_sum_00000;
--rollback drop synonym nwis_result_sum;

--changeset drsteini:0SchemaSynonymsAG
create or replace synonym nwis_result_ct_sum for nwis_result_ct_sum_00000;
--rollback drop synonym nwis_result_ct_sum;

--changeset drsteini:0SchemaSynonymsAH
create or replace synonym nwis_result_nr_sum for nwis_result_nr_sum_00000;
--rollback drop synonym nwis_result_nr_sum;

--changeset drsteini:0SchemaSynonymsAI
create or replace synonym nwis_lctn_loc_new for nwis_lctn_loc_00000;
--rollback drop synonym nwis_lctn_loc_new;

--changeset drsteini:0SchemaSynonymsAJ
create or replace synonym nwis_lctn_loc_old for nwis_lctn_loc_00000;
--rollback drop synonym nwis_lctn_loc_old;

--changeset drsteini:0SchemaSynonymsAK
create or replace synonym nwis_di_org_new for nwis_di_org_00000;
--rollback drop synonym nwis_di_org_new;

--changeset drsteini:0SchemaSynonymsAL
create or replace synonym nwis_di_org_old for nwis_di_org_00000;
--rollback drop synonym nwis_di_org_old;

--changeset drsteini:0SchemaSynonymsAM
create or replace synonym characteristicname for characteristicname_00000;
--rollback drop synonym characteristicname;

--changeset drsteini:0SchemaSynonymsAN
create or replace synonym characteristictype for characteristictype_00000;
--rollback drop synonym characteristictype;

--changeset drsteini:0SchemaSynonymsAO
create or replace synonym country for country_00000;
--rollback drop synonym country;

--changeset drsteini:0SchemaSynonymsAP
create or replace synonym county for county_00000;
--rollback drop synonym county;

--changeset drsteini:0SchemaSynonymsAQ
create or replace synonym organization for organization_00000;
--rollback drop synonym organization;

--changeset drsteini:0SchemaSynonymsAR
create or replace synonym samplemedia for samplemedia_00000;
--rollback drop synonym samplemedia;

--changeset drsteini:0SchemaSynonymsAS
create or replace synonym sitetype for sitetype_00000;
--rollback drop synonym sitetype;

--changeset drsteini:0SchemaSynonymsAT
create or replace synonym state for state_00000;
--rollback drop synonym state;

--NOTE: the following synonyms require the database links to exist. They are not run as part of the automated script since they require passwords...
--changeset drsteini:0SchemaSynonymsBA
create or replace synonym lu_tz for lu_tz@nwq_stg_dbstage.er.usgs.gov;
--rollback drop synonym lu_tz;

--changeset drsteini:0SchemaSynonymsBB
create or replace synonym lu_parm for lu_parm@nwq_stg_dbstage.er.usgs.gov;
--rollback drop synonym lu_parm;

--changeset drsteini:0SchemaSynonymsBC
create or replace synonym lu_parm_seq_grp_cd for lu_parm_seq_grp_cd@nwq_stg_dbstage.er.usgs.gov;
--rollback drop synonym lu_parm_seq_grp_cd;

--changeset drsteini:0SchemaSynonymsBD
create or replace synonym lu_parm_alias for lu_parm_alias@nwq_stg_dbstage.er.usgs.gov;
--rollback drop synonym lu_parm_alias;

--changeset drsteini:0SchemaSynonymsBE
create or replace synonym lu_parm_meth for lu_parm_meth@nwq_stg_dbstage.er.usgs.gov;
--rollback drop synonym lu_parm_meth;

--changeset drsteini:0SchemaSynonymsBF
create or replace synonym fxd for fxd@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym fxd;

--changeset drsteini:0SchemaSynonymsBG
create or replace synonym tu for tu@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym tu;

--changeset drsteini:0SchemaSynonymsBH
create or replace synonym nwis_wqx_medium_cd for nwis_wqx_medium_cd@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym nwis_wqx_medium_cd;

--changeset drsteini:0SchemaSynonymsBI
create or replace synonym body_part for body_part@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym body_part;

--changeset drsteini:0SchemaSynonymsBJ
create or replace synonym proto_org for proto_org@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym proto_org;

--changeset drsteini:0SchemaSynonymsBK
create or replace synonym meth for meth@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym meth;

--changeset drsteini:0SchemaSynonymsBL
create or replace synonym z_cit_meth for z_cit_meth@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym z_cit_meth;

--changeset drsteini:0SchemaSynonymsBM
create or replace synonym nwis_wqx_rpt_lev_cd for nwis_wqx_rpt_lev_cd@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym nwis_wqx_rpt_lev_cd;

--changeset drsteini:0SchemaSynonymsBN
create or replace synonym val_qual_cd for val_qual_cd@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym val_qual_cd;

--changeset drsteini:0SchemaSynonymsBO
create or replace synonym hyd_event_cd for hyd_event_cd@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym hyd_event_cd;

--changeset drsteini:0SchemaSynonymsBP
create or replace synonym hyd_cond_cd for hyd_cond_cd@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym hyd_cond_cd;

--changeset drsteini:0SchemaSynonymsBQ
create or replace synonym nwis_district_cds_by_host for nwis_district_cds_by_host@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym nwis_district_cds_by_host;

--changeset drsteini:0SchemaSynonymsBR
create or replace synonym aqfr for aqfr@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym aqfr;

--changeset drsteini:0SchemaSynonymsBS
create or replace synonym stage_country for country@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym stage_country;

--changeset drsteini:0SchemaSynonymsBT
create or replace synonym stage_county for county@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym stage_county;

--changeset drsteini:0SchemaSynonymsBU
create or replace synonym stage_state for state@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym stage_state;

--changeset drsteini:0SchemaSynonymsBV
create or replace synonym site_tp for site_tp@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym site_tp;

--changeset drsteini:0SchemaSynonymsBW
create or replace synonym nwis_misc_lookups for nwis_misc_lookups@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym nwis_misc_lookups;

--changeset drsteini:0SchemaSynonymsBX
create or replace synonym nat_aqfr for nat_aqfr@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym nat_aqfr;

--changeset drsteini:0SchemaSynonymsBY
create or replace synonym state_fips for state_fips@nwis_ws_stg_dbstage.er.usgs.gov;
--rollback drop synonym state_fips;

--changeset drsteini:0SchemaSynonymsBZ
create or replace synonym storet_sum for storet_sum@storetmodern_dbdw.er.usgs.gov;
--rollback drop synonym storet_sum;
