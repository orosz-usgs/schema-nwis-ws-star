create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.country
(country_cd                     character varying (2)
,country_nm                     character varying (48)
,primary key (country_cd)
) with (fillfactor = 100);
