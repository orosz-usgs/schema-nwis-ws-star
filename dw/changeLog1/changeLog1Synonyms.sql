--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1SchemaSynonymsAA
create or replace synonym station for station_00000;
--rollback drop synonym station;
