create unlogged table if not exists ${NWIS_SCHEMA_NAME}.parm_alias
(parm_cd                        character varying (5)
,parm_alias_cd                  character varying (12)
,parm_alias_nm                  text
,parm_alias_init_dt             date
,parm_alias_init_nm             character varying (16)
,parm_alias_rev_dt              date
,parm_alias_rev_nm              character varying (16)
,primary key (parm_cd, parm_alias_cd)
) with (fillfactor = 100);
