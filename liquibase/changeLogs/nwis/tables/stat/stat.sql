create unlogged table if not exists ${NWIS_SCHEMA_NAME}.stat
(stat_cd                        character varying (5)
,dv_valid_fg                    boolean
,uv_valid_fg                    boolean
,stat_nm                        text
,stat_ds                        text
,primary key (stat_cd)
) with (fillfactor = 100);
