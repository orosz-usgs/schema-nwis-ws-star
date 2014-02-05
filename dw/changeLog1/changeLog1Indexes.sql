--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1SchemaIndexesAA
drop index station_tp_nm_abbr_00000;
--rollback create bitmap index station_tp_nm_abbr_00000 on fa_station_00000 (substr(station_type_name || ':', 1, instr(station_type_name || ':', ':')-1)) nologging;

--changeset drsteini:1SchemaIndexesAB
create bitmap index fa_station_primary_type_00000 on fa_station_00000 (primary_site_type) nologging;
--rollback drop index fa_station_primary_type_00000;

--changeset drsteini:1SchemaIndexesAC
create bitmap index nwis_station_sum_4_00000 on nwis_station_sum_00000 (primary_site_type) nologging;
--rollback drop index nwis_station_sum_4_00000;

--changeset drsteini:0SchemaIndexesAD
create bitmap index nwis_result_sum_3_00000 on nwis_result_sum_00000 (primary_site_type) local nologging;
--rollback drop index nwis_result_sum_3_00000;

--changeset drsteini:0SchemaIndexesAE
create bitmap index nwis_result_ct_sum_3_00000 on nwis_result_ct_sum_00000 (primary_site_type) local nologging;
--rollback drop index nwis_result_ct_sum_3_00000;

