create table parm_meth
(parm_cd                        varchar2(5 char)    constraint nn_parm_meth_parm not null
,meth_cd                        varchar2(5 char)
,parm_meth_lgcy_cd              varchar2(1 char)
,parm_meth_rnd_tx               varchar2(10 char)
,parm_meth_init_nm              varchar2(8 char)
,parm_meth_init_dt              date
,parm_meth_rev_nm               varchar2(8 char)
,parm_meth_rev_dt               date
,parm_meth_vld_fg               varchar2(1 char)
,multiplier                     varchar2(6 char)
) parallel 4 compress pctfree 0 nologging;
