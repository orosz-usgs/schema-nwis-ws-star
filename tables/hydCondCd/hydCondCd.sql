create table hyd_cond_cd
(hyd_cond_cd                    varchar2(1 char)    constraint nn_hyd_cond_cd_pk not null
,hyd_cond_srt_nu                number
,hyd_cond_vld_fg                varchar2(1 char)
,hyd_cond_nm                    varchar2(64 char)
,hyd_cond_ds                    varchar2(512 char)
,constraint hyd_cond_cd_pk
  primary key (hyd_cond_cd)
) parallel 4 compress pctfree 0 nologging;
