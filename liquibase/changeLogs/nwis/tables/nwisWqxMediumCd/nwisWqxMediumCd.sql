create unlogged table if not exists ${NWIS_SCHEMA_NAME}.nwis_wqx_medium_cd
(legacy_nwis_medium_cd          character varying (1)
,nwis_medium_cd                 character varying (3)
,nwis_medium_nm                 character varying (75)
,wqx_act_med_nm                 character varying (30)
,wqx_act_med_sub                character varying (64)
,load_date                      date
) with (fillfactor = 100);
