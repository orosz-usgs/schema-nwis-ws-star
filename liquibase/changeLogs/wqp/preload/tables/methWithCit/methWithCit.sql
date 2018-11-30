create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.meth_with_cit
(meth_cd                        character varying (5)
,meth_nm                        character varying (32)
,cit_nm                         character varying (50)
) with (fillfactor = 100);
