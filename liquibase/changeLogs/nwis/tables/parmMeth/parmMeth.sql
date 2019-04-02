create unlogged table if not exists ${NWIS_SCHEMA_NAME}.parm_meth
(parm_cd                        character varying (5)    not null
,meth_cd                        character varying (5)
,parm_meth_lgcy_cd              character varying (1)
,parm_meth_rnd_tx               character varying (10)
,parm_meth_init_nm              character varying (8)
,parm_meth_init_dt              date
,parm_meth_rev_nm               character varying (8)
,parm_meth_rev_dt               date
,parm_meth_vld_fg               boolean
,multiplier                     character varying (6)
) with (fillfactor = 100);
