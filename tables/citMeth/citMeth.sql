create table cit_meth
(cit_meth_id                    number              constraint nn_cit_meth_pk not null
,meth_cd                        varchar2(5 char)
,cit_nm                         varchar2(50 char)
,cit_meth_no                    varchar2(32 char)
,meth_src_cd                    varchar2(8 char)
,cit_meth_init_nm               varchar2(8 char)
,cit_meth_init_dt               date
,cit_meth_rev_nm                varchar2(8 char)
,cit_meth_rev_dt                date
,constraint cit_meth_pk
  primary key (cit_meth_id)
) parallel 4 compress pctfree 0 nologging;
