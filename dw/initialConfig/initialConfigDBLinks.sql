--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:1SchemaDBLinksAA
create database link nwq_stg_dbstage.er.usgs.gov connect to nwq_stg identified by "${nwq_stg_pwd}" using 'dbstage.er.usgs.gov';
--rollback drop database link nwq_stg_dbstage.er.usgs.gov;

--changeset drsteini:1SchemaDBLinksAB
create database link nwis_ws_stg_dbstage.er.usgs.gov connect to nwq_stg identified by "${nwis_ws_stg_pwd}" using 'dbstage.er.usgs.gov';
--rollback drop database link nwq_stg_dbstage.er.usgs.gov;
