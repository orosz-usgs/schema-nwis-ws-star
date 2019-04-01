create unlogged table if not exists ${NWIS_SCHEMA_NAME}.fxd
(parm_cd                        character varying (5)
,fxd_va                         decimal
,fxd_nm                         character varying (20)
,fxd_tx                         character varying (80)
,fxd_init_dt                    date
,fxd_init_nm                    character varying (16)
,fxd_rev_dt                     date
,fxd_rev_nm                     character varying (16)
,primary key (parm_cd, fxd_va)
) with (fillfactor = 100);
