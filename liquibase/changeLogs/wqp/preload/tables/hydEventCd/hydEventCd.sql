create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.hyd_event_cd
(hyd_event_cd                   character varying (1)    primary key
,hyd_event_srt_nu               integer
,hyd_event_vld_fg               boolean
,hyd_event_nm                   character varying (64)
,hyd_event_ds                   character varying (512)
) with (fillfactor = 100);
