create unlogged table if not exists ${NWIS_SCHEMA_NAME}.val_qual_cd
(val_qual_cd                    character varying (1)
,val_qual_tp                    character varying (5)
,val_qual_srt_nu                integer
,val_qual_vld_fg                boolean
,val_qual_nm                    character varying (66)
,val_qual_ds                    text
,primary key (val_qual_cd)
) with (fillfactor = 100);
