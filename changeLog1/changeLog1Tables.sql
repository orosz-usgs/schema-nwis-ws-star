--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:1SchemaTablesAA
create table public_srsnames_00000
(parm_cd                        char(5 byte)         not null
,description                    varchar2(170 byte)
,characteristicname             varchar2(1200 byte)  not null
,measureunitcode                varchar2(10 byte)
,resultsamplefraction           varchar2(24 byte)
,resulttemperaturebasis         varchar2(12 byte)
,resultstatisticalbasis         varchar2(25 byte)
,resulttimebasis                varchar2(12 byte)
,resultweightbasis              varchar2(15 byte)
,resultparticlesizebasis        varchar2(64 byte)
,last_rev_dt                    date
,max_last_rev_dt                date
);
--rollback drop table public_srsnames_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAB
create table characteristicname_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
);
--rollback drop table characteristicname_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAC
create table characteristictype_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
);
--rollback drop table characteristictype_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAD
create table country_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
);
--rollback drop table country_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAE
create table county_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,country_cd                     varchar2(2 char)
,state_cd                       varchar2(2 char)
,sort_order                     number
);
--rollback drop table county_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAF
create table organization_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
);
--rollback drop table organization_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAG
create table samplemedia_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
);
--rollback drop table samplemedia_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAH
create table sitetype_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
);
--rollback drop table sitetype_00000 cascade constraints purge;

--changeset drsteini:1SchemaTablesAI
create table state_00000
(code_value                     varchar2(500 char)
,description_with_country       varchar2(4000 char)
,description_with_out_country   varchar2(4000 char)
,country_cd                     varchar2(2 char)
,sort_order                     number
);
--rollback drop table state_00000 cascade constraints purge;
