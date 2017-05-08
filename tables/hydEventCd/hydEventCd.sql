create table hyd_event_cd
(hyd_event_cd                   varchar2(1 char)    constraint nn_hyd_event_cd_pk not null
,hyd_event_srt_nu               number
,hyd_event_vld_fg               varchar2(1 char)
,hyd_event_nm                   varchar2(64 char)
,hyd_event_ds                   varchar2(512 char)
,constraint hyd_event_cd_pk
  primary key (hyd_event_cd)
) parallel 4 compress pctfree 0 nologging;
