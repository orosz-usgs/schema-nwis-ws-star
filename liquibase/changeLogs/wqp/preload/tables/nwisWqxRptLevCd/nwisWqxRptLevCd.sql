create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.nwis_wqx_rpt_lev_cd
(rpt_lev_cd                     character varying (6)
,rpt_lev_nm                     character varying (64)
,wqx_rpt_lev_nm                 character varying (60)
) with (fillfactor = 100);
