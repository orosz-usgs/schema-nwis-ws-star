create table nwis_wqx_rpt_lev_cd
(rpt_lev_cd                     varchar2(6 char)
,rpt_lev_nm                     varchar2(64 char)
,wqx_rpt_lev_nm                 varchar2(60 char)
) parallel 4 compress pctfree 0 nologging;
