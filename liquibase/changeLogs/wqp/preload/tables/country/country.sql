create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.country
(country_cd                     character varying (2)    primary key
,country_nm                     character varying (48)
) with (fillfactor = 100);
