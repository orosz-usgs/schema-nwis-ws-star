create table country
(country_cd                     varchar2(2 char)    constraint nn_country_pk not null
,country_nm                     varchar2(48 char)
,constraint country_pk
  primary key (country_cd)
) parallel 4 compress pctfree 0 nologging;
