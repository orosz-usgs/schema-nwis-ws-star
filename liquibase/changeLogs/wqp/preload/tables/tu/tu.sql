create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.tu
(tu_id                          integer                     primary key
,tu_1_cd                        character varying (1)
,tu_1_nm                        character varying (35)
,tu_2_cd                        character varying (1)
,tu_2_nm                        character varying (35)
,tu_3_cd                        character varying (7)
,tu_3_nm                        character varying (35)
,tu_4_cd                        character varying (7)
,tu_4_nm                        character varying (35)
,tu_unnm_cd                     character varying (1)
,tu_use_cd                      character varying (12)
,tu_unaccp_rsn_tx               character varying (24)
,tu_cred_rat_tx                 character varying (40)
,tu_cmplt_rat_cd                character varying (10)
,tu_curr_rat_cd                 character varying (7)
,tu_phyl_srt_nu                 integer
,tu_cr                          date
,tu_par_id                      integer
,tu_tax_auth_id                 integer
,tu_hybr_auth_id                integer
,tu_king_id                     integer
,tu_rnk_id                      integer
,tu_md                          date
) with (fillfactor = 100);
