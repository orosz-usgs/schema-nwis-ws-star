create table site_tp
(site_tp_cd                     varchar2(7 char)
,site_tp_srt_nu                 number
,site_tp_vld_fg                 varchar2(1 char)
,site_tp_prim_fg                varchar2(1 char)
,site_tp_nm                     varchar2(10 char)
,site_tp_ln                     varchar2(40 char)
,site_tp_ds                     varchar2(1200 char)
) parallel 4 compress pctfree 0 nologging;
