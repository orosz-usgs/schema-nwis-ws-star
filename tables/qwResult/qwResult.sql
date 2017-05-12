create table qw_result
(sample_id                      number
,site_id                        number
,record_no                      varchar2(8 char)
,result_web_cd                  varchar2(1 char)
,parameter_cd                   varchar2(5 char)
,meth_cd                        varchar2(5 char)
,result_va                      varchar2(12 char)
,result_unrnd_va                varchar2(12 char)
,result_rd                      varchar2(1 char)
,rpt_lev_va                     varchar2(12 char)
,rpt_lev_cd                     varchar2(6 char)
,lab_std_va                     varchar2(11 char)
,remark_cd                      varchar2(1 char)
,val_qual_tx                    varchar2(5 char)
,null_val_qual_cd               varchar2(1 char)
,qa_cd                          varchar2(1 char)
,dqi_cd                         varchar2(1 char)
,anl_ent_cd                     varchar2(8 char)
,anl_set_no                     varchar2(12 char)
,anl_dt                         varchar2(19 char)
,prep_set_no                    varchar2(12 char)
,prep_dt                        varchar2(19 char)
,result_field_cm_tx             varchar2(640 char)
,result_lab_cm_tx               varchar2(640 char)
,result_md                      date
,qw_result_md                   date
) parallel 4 compress pctfree 0 nologging;
