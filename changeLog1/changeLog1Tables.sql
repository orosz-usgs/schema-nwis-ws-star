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

--changeset drsteini:1SchemaTablesAJ
create table us_counties_dis_20121015
(fips         varchar2(5 char)
,area         float(63)
,perimeter    float(63)
,countyp010   float(63)
,state        varchar2(5 char)
,county_name  varchar2(50 char)
,state_fips   varchar2(2 char)
,square_mil   float(63)
,geom         mdsys.sdo_geometry
);
--rollback drop table us_counties_dis_20121015 cascade constraints;

--changeset drsteini:1SchemaTablesAK
create table huc8_conus_hi_ak_pr_dis
(cat_num     varchar2(8 char)
,first_cat_  varchar2(60 char)
,geom        mdsys.sdo_geometry
);
--rollback drop table huc8_conus_hi_ak_pr_dis cascade constraints;

--changeset drsteini:1SchemaTablesAL
create table states
(state       varchar2(26 char)
,state_abrv  varchar2(2 char)
,fipsst      varchar2(2 char)
,totpop      number
,pctsmpld    number
,landsqmi    number
,poppsqmi    number
,female      number
,rural       number
,onfarms     number
,infamily    number
,alone       number
,groupqtr    number
,popinhhs    number
,pctfemal    number
,pctgq       number
,white       number
,black       number
,asianpi     number
,amindian    number
,hispanic    number
,pctwhite    number
,pctblack    number
,pctasian    number
,pctamind    number
,pcthisp     number
,pct0_4      number
,pct5_9      number
,pct10_13    number
,pct14_17    number
,pct18_24    number
,pct25_34    number
,pct35_44    number
,pct45_54    number
,pct55_59    number
,pct60_64    number
,pct65_74    number
,pct75_84    number
,pct85_up    number
,pct0_19     number
,pct20_39    number
,pct40_64    number
,pct65_up    number
,age0_4      number
,age5_9      number
,age10_13    number
,age14_17    number
,age18_24    number
,age25_34    number
,age35_44    number
,age45_54    number
,age55_59    number
,age60_64    number
,age65_74    number
,age75_84    number
,age85_up    number
,age0_19     number
,age20_39    number
,age40_64    number
,age65_up    number
,age0_17     number
,age18_44    number
,age45_64    number
,medage      number
,tothhs      number
,avghhsz     number
,hhs1ov65    number
,hhs1        number
,hhs2        number
,hhs3_4      number
,hhs5_up     number
,pcthhs1     number
,pcthhs2     number
,pcthhs3_    number
,pcthhs5_    number
,families    number
,mcfams      number
,mcwchild    number
,femhead     number
,femheadc    number
,nonfhhs     number
,pctfamhh    number
,pctmcfam    number
,pctmcwch    number
,pctfemhe    number
,pctfemhc    number
,pctnfhhs    number
,hhi0_10     number
,hhi10_15    number
,hhi15_25    number
,hhi25_35    number
,hhi35_50    number
,hhi50_75    number
,hhi75_99    number
,hhi100up    number
,phi0_10     number
,phi10_15    number
,phi15_25    number
,phi25_35    number
,phi35_50    number
,phi50_75    number
,phi75_99    number
,phi100up    number
,phi0_15     number
,phi0_25     number
,phi0_35     number
,phi0_50     number
,phi0_75     number
,phi0_99     number
,medhhinc    number
,avghhinc    number
,geom        mdsys.sdo_geometry
);
--rollback drop table states cascade constraints;
