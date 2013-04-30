--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:1SchemaTablesAA
create table public_srsnames_00000
--rollback drop table public_srsnames_00000 cascade constraints purge;
 