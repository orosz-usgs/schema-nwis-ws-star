--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:0SchemaDBLinksAA
create database link nwq_stg_${stage}.er.usgs.gov connect to nwq_stg identified by "${nwq_stg_pwd}" using '${stage}.er.usgs.gov';
--rollback drop database link nwq_stg_${stage}.er.usgs.gov;

--changeset drsteini:0SchemaDBLinksAB
create database link nwis_ws_stg_${stage}.er.usgs.gov connect to nwis_ws_stg identified by "${nwis_ws_stg_pwd}" using '${stage}.er.usgs.gov';
--rollback drop database link nwis_ws_stg_${stage}.er.usgs.gov;

--changeset drsteini:0SchemaDBLinksAC
create database link storetmodern_${dw}.er.usgs.gov connect to storetmodern identified by "${storetmodern_pwd}" using '${dw}.er.usgs.gov';
--rollback drop database link storetmodern_${dw}.er.usgs.gov;
