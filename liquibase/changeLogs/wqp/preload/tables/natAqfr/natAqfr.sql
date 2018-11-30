create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.nat_aqfr
(country_cd                     character varying (2)
,state_cd                       character varying (2)
,nat_aqfr_cd                    character varying (10)
,nat_aqfr_nm                    character varying (64)
,primary key (country_cd, state_cd, nat_aqfr_cd)
) with (fillfactor = 100);
