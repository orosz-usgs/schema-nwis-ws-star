create unlogged table if not exists ${NWIS_SCHEMA_NAME}.lat_long_datum
(code                           character varying (25)
,name                           character varying (16)
,sort_order                     smallint
,description                    character varying (255)
,valid_flag                     boolean
,primary key (code)
) with (fillfactor = 100);
