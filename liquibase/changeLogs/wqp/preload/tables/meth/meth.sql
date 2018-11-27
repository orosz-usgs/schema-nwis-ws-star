create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.meth
(meth_cd                        character varying (5)    primary key
,meth_tp                        character varying (4)
,meth_nm                        character varying (32)
,meth_ds                        character varying (256)
,meth_rnd_owner_cd              character varying (8)
,discipline_cd                  character varying (2)
,meth_init_nm                   character varying (8)
,meth_init_dt                   date
,meth_rev_nm                    character varying (8)
,meth_rev_dt                    date
) with (fillfactor = 100);
