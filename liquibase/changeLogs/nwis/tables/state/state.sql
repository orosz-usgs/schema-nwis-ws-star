create unlogged table if not exists ${NWIS_SCHEMA_NAME}.state
(country_cd                     character varying (2)
,state_cd                       character varying (2)
,state_nm                       character varying (53)
,state_post_cd                  character varying (2)
,state_max_lat_va               character varying (11)
,state_min_lat_va               character varying (11)
,state_max_long_va              character varying (12)
,state_min_long_va              character varying (12)
,state_max_alt_va               character varying (8)
,state_min_alt_va               character varying (8)
,state_md                       character varying (8)
,primary key (country_cd, state_cd)
) with (fillfactor = 100);
