--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1SchemaDataAA 
insert /*+ append nologging */ into us_counties_dis_20121015
select * from us_counties_dis_20121015@nwis_widev.er.usgs.gov;
--rollback truncate table us_counties_dis_20121015;

--changeset drsteini:1SchemaDataAB 
insert /*+ append nologging */ into huc8_conus_hi_ak_pr_dis
select * from huc8_conus_hi_ak_pr_dis@nwis_widev.er.usgs.gov;
--rollback truncate table huc8_conus_hi_ak_pr_dis;

--changeset drsteini:1SchemaDataAC 
insert /*+ append nologging */ into states
select * from states@nwis_widev.er.usgs.gov;
--rollback truncate table states;
