create table state
(country_cd                     varchar2(2 char)    constraint nn_state_pk_a not null
,state_cd                       varchar2(2 char)    constraint nn_state_pk_b not null
,state_nm                       varchar2(53 char)
,state_post_cd                  varchar2(2 char)
,state_max_lat_va               varchar2(11 char)
,state_min_lat_va               varchar2(11 char)
,state_max_long_va              varchar2(12 char)
,state_min_long_va              varchar2(12 char)
,state_max_alt_va               varchar2(8 char)
,state_min_alt_va               varchar2(8 char)
,state_md                       varchar2(8 char)
,constraint state_pk
  primary key (country_cd, state_cd)
) parallel 4 compress pctfree 0 nologging;
