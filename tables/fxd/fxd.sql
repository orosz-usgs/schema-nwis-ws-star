create table fxd
(parm_cd                        varchar2(5 char)    constraint nn_fxd_pk_a not null
,fxd_va                         number              constraint nn_fxd_pk_b not null
,fxd_nm                         varchar2(20 char)
,fxd_tx                         varchar2(80 char)
,fxd_init_dt                    date
,fxd_init_nm                    varchar2(16 char)
,fxd_rev_dt                     date
,fxd_rev_nm                     varchar2(16 char)
,constraint fxd_pk
  primary key (parm_cd, fxd_va)
) parallel 4 compress pctfree 0 nologging;
