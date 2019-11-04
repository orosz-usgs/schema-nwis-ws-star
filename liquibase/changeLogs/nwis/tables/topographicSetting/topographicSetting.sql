create unlogged table if not exists ${NWIS_SCHEMA_NAME}.topographic_setting
(code                           character varying (25)
,name                           character varying (16)
,sort_order                     integer
,description                    character varying (255)
,valid_flag                     boolean
,primary key (code)
) with (fillfactor = 100);
