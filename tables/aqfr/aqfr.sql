create table aqfr
(country_cd                     varchar2(2 char)   constraint nn_aqfr_pk_country not null
,state_cd                       varchar2(2 char)   constraint nn_aqfr_pk_state not null
,aqfr_cd                        varchar2(8 char)   constraint nn_aqfr_pk_aqfr not null
,aqfr_nm                        varchar2(70 char)
,aqfr_md                        varchar2(8 char)
,constraint aqfr_pk
  primary key (country_cd, state_cd, aqfr_cd)
) parallel 4 compress pctfree 0 nologging;
