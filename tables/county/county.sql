create table county
(country_cd                     varchar2(2 char)    constraint nn_county_pk_a not null
,state_cd                       varchar2(2 char)    constraint nn_county_pk_b not null
,county_cd                      varchar2(3 char)    constraint nn_county_pk_c not null
,county_nm                      varchar2(48 char)
,county_max_lat_va              varchar2(11 char)
,county_min_lat_va              varchar2(11 char)
,county_max_long_va             varchar2(12 char)
,county_min_long_va             varchar2(12 char)
,county_max_alt_va              varchar2(8 char)
,county_min_alt_va              varchar2(8 char)
,county_md                      varchar2(8 char)
,constraint county_pk
  primary key (country_cd, state_cd, county_cd)
) parallel 4 compress pctfree 0 nologging;
