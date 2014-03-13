--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1SchemaSynonymsAA
create or replace synonym station for station_00000;
--rollback drop synonym station;


create or replace synonym wqp_nemi_nwis_crosswalkfor wqp_core.wqp_nemi_nwis_crosswalk;