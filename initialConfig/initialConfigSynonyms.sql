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
