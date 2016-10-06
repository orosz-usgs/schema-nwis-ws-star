--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:drop_nwq_stg.er.usgs.gov
drop database link nwq_stg.er.usgs.gov;
--rollback create database link nwq_stg.er.usgs.gov connect to nwq_stg identified by "${nwq_stg_pwd}" using 'dbstage.er.usgs.gov';

--changeset drsteini:drop_nwis_ws_stg.er.usgs.gov
drop database link nwis_ws_stg.er.usgs.gov;
--rollback create database link nwis_ws_stg.er.usgs.gov connect to nwis_ws_stg identified by "${nwis_ws_stg_pwd}" using 'dbstage.er.usgs.gov';

--changeset drsteini:create_natdb.er.usgs.gov
create database link natdb.er.usgs.gov connect to nawqadb identified by "${nawqadb_pwd}" using 'natprod.er.usgs.gov:1521/natprod.usgs.gov';
--rollback drop database link natdb.er.usgs.gov;
