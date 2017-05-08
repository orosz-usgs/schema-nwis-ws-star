create table meth_with_cit
(meth_cd                        varchar2(5 char)
,meth_nm                        varchar2(32 char)
,cit_nm                         varchar2(50 char)
) parallel 4 compress pctfree 0 nologging;
