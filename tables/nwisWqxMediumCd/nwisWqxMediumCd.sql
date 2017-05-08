create table nwis_wqx_medium_cd
(legacy_nwis_medium_cd          varchar2(1 char)
,nwis_medium_cd                 varchar2(3 char)
,nwis_medium_nm                 varchar2(75 char)
,wqx_act_med_nm                 varchar2(30 char)
,wqx_act_med_sub                varchar2(64 char)
,load_date                      date
) parallel 4 compress pctfree 0 nologging;
