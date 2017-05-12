create table parm_alias
(parm_cd                        varchar2(5 char)    constraint nn_parm_alias_pk_parm not null
,parm_alias_cd                  varchar2(12 char)   constraint nn_parm_alias_pk_alias not null
,parm_alias_nm                  varchar2(1200 char)
,parm_alias_init_dt             date
,parm_alias_init_nm             varchar2(16 char)
,parm_alias_rev_dt              date
,parm_alias_rev_nm              varchar2(16 char)
,constraint parm_alias_pk
  primary key (parm_cd, parm_alias_cd)
) parallel 4 compress pctfree 0 nologging;
