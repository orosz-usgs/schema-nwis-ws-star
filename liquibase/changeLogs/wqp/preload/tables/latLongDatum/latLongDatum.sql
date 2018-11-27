create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.lat_long_datum
(code                           character varying (25)   primary key
,name                           character varying (16)
,sort_order                     smallint
,description                    character varying (255)
,valid_flag                     boolean
) with (fillfactor = 100);
