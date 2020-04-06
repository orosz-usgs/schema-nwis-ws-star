create unlogged table if not exists ${NWIS_SCHEMA_NAME}.gw_level_site_status
(code                           character varying (25)
,name                           character varying (16)
,sort_order                     integer
,description                    character varying (255)
,valid_flag                     boolean
,primary key (code)
) with (fillfactor = 100);
