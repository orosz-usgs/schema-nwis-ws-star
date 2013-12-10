--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:1SchemaTablesAA
create table organization_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,organization_details			xmltype
,sort_order                     number
,constraint organization_00000_pk
   primary key (code_value)
);
--rollback drop table organization_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAB
create table station_00000
(station_pk						number
,station_id                     varchar2(100 char)
,station_details                xmltype
,country_cd                     varchar2(2 char)
,county_cd                      varchar2(3 char)
,geom                           mdsys.sdo_geometry
,huc_8                          varchar2(8 char)
,organization_id                varchar2(500 char)
,state_cd                       varchar2(2 char)
,site_type                  	varchar2(500 char)
,result_count					number
,constraint station_00000_pk
   primary key (station_pk)
,constraint station_00000_org
   foreign key (organization_id)
     references organization_00000 (code_value)
       disable
);
--rollback drop table station_00000 cascade constraints purge;
