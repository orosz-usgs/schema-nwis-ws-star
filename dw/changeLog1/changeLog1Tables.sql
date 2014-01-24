--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:1SchemaTablesAA
alter table fa_station_00000 add (primary_site_type varchar2(40 byte));
--rollback alter table fa_station_00000 drop column primary_site_type;

--changeset drsteini:1SchemaTablesAB
alter table nwis_station_sum_00000 rename column station_type_name to primary_site_type;
--rollback alter table nwis_station_sum_00000 rename column primary_site_type to station_type_name;

--changeset drsteini:1SchemaTablesAC
alter table nwis_station_sum_00000 modify(primary_site_type varchar2(40 byte));
--rollback alter table nwis_station_sum_00000 modify(primary_site_type varchar2(82 byte));

--changeset drsteini:1SchemaTablesAD
alter table nwis_result_sum_00000 rename column station_type_name to primary_site_type;
--rollback alter table nwis_result_sum_00000 rename column primary_site_type to station_type_name;

--changeset drsteini:1SchemaTablesAE
alter table nwis_result_sum_00000 modify(primary_site_type varchar2(40 byte));
--rollback alter table nwis_result_sum_00000 modify(primary_site_type varchar2(82 byte));

--changeset drsteini:1SchemaTablesAF
alter table nwis_result_ct_sum_00000 rename column station_type_name to primary_site_type;
--rollback alter table nwis_result_ct_sum_00000 rename column primary_site_type to station_type_name;

--changeset drsteini:1SchemaTablesAG
alter table nwis_result_ct_sum_00000 modify(primary_site_type varchar2(40 byte));
--rollback alter table nwis_result_ct_sum_00000 modify(primary_site_type varchar2(82 byte));
