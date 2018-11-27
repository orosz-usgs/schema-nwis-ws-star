create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.parm
(parm_cd                        character varying (5)    primary key
,parm_nm                        character varying (29)
,parm_rmk_tx                    character varying (256)
,parm_unt_tx                    character varying (10)
,parm_seq_nu                    smallint
,parm_seq_grp_cd                character varying (3)
,parm_ds                        character varying (170)
,parm_medium_tx                 character varying (30)
,parm_frac_tx                   character varying (24)
,parm_temp_tx                   character varying (12)
,parm_stat_tx                   character varying (25)
,parm_tm_tx                     character varying (12)
,parm_wt_tx                     character varying (15)
,parm_size_tx                   character varying (64)
,parm_entry_fg                  boolean
,parm_public_fg                 boolean
,parm_neg_fg                    boolean
,parm_zero_fg                   boolean
,parm_null_fg                   boolean
,parm_ts_fg                     boolean
,parm_init_dt                   date
,parm_init_nm                   character varying (16)
,parm_rev_dt                    date
,parm_rev_nm                    character varying (16)
,parm_seq_grp_nm                character varying (32)
,wqpcrosswalk                   text
,srsname                        text
,multiplier                     character varying (6)
) with (fillfactor = 100);
