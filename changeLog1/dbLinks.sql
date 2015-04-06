--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:1DBLinksAA
create database link nwq_stg.er.usgs.gov connect to nwq_stg identified by "${nwq_stg_pwd}" using 'dbstage.er.usgs.gov';
--rollback drop database link nwq_stg.er.usgs.gov;

--changeset drsteini:1DBLinksAB
create database link nwis_ws_stg.er.usgs.gov connect to nwis_ws_stg identified by "${nwis_ws_stg_pwd}" using 'dbstage.er.usgs.gov';
--rollback drop database link nwis_ws_stg.er.usgs.gov;

--changeset drsteini:1DBLinksAB
create database link nemi.er.usgs.gov connect to nemi_data identified by "${nemi_data_pwd}" using 'dbtrans.er.usgs.gov';
--rollback drop database link nemi.er.usgs.gov;
