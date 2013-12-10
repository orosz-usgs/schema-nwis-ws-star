--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:0SchemaTypesAA
create or replace type typ_vctbl as table of varchar2(256);
--rollback drop type typ_vctbl;
