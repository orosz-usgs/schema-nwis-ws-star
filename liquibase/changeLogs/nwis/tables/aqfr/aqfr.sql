create unlogged table if not exists ${NWIS_SCHEMA_NAME}.aqfr
(country_cd                     character varying (2)
,state_cd                       character varying (2)
,aqfr_cd                        character varying (8)
,aqfr_nm                        character varying (70)
,aqfr_md                        character varying (8)
,primary key (country_cd, state_cd, aqfr_cd)
)  with (fillfactor = 100);
