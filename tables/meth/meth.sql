create table meth
(meth_cd                        varchar2(5 char)    constraint nn_meth_pk not null
,meth_tp                        varchar2(4 char)
,meth_nm                        varchar2(32 char)
,meth_ds                        varchar2(256 char)
,meth_rnd_owner_cd              varchar2(8 char)
,discipline_cd                  varchar2(2 char)
,meth_init_nm                   varchar2(8 char)
,meth_init_dt                   date
,meth_rev_nm                    varchar2(8 char)
,meth_rev_dt                    date
,constraint meth_pk
  primary key (meth_cd)
) parallel 4 compress pctfree 0 nologging;
