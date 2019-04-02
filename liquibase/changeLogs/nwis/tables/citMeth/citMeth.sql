create unlogged table if not exists ${NWIS_SCHEMA_NAME}.cit_meth
(cit_meth_id                    integer
,meth_cd                        character varying (5)
,cit_nm                         character varying (50)
,cit_meth_no                    character varying (32)
,meth_src_cd                    character varying (8)
,cit_meth_init_nm               character varying (8)
,cit_meth_init_dt               date
,cit_meth_rev_nm                character varying (8)
,cit_meth_rev_dt                date
,primary key (cit_meth_id)
) with (fillfactor = 100);
