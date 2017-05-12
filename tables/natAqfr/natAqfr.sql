create table nat_aqfr
(country_cd                     varchar2(2 char)    constraint nn_nat_aqfr_pk_country not null
,state_cd                       varchar2(2 char)    constraint nn_nat_aqfr_pk_state not null
,nat_aqfr_cd                    varchar2(10 char)   constraint nn_nat_aqfr_pk_nat_aqfr not null
,nat_aqfr_nm                    varchar2(64 char)
,constraint nat_aqfr_pk
  primary key (country_cd, state_cd, nat_aqfr_cd)
) parallel 4 compress pctfree 0 nologging;
