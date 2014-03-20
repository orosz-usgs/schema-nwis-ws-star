--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:0SchemaRIAA
alter table fa_station_00000 add constraint pk_fa_station_00000 primary key (pk_isn) using index nologging;
--rollback alter table fa_station_00000 drop primary key cascade;

--changeset drsteini:0SchemaRIAB
alter table fa_regular_result_00000 add (constraint fk_station_fk_00000 foreign key (fk_station) references fa_station_00000 (pk_isn));
--rollback alter table fa_regular_result_00000 drop constraint fk_station_fk_00000;

--changeset drsteini:0SchemaRIAC
alter table series_catalog_00000 add (constraint fk_station2_fk_00000 foreign key (fk_station) references fa_station_00000 (pk_isn));
--rollback alter table series_catalog_00000 drop constraint fk_station2_fk_00000;
