create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.lat_long_accuracy
(code                           character varying (25)
,name                           character varying (16)
,sort_order                     smallint
,description                    character varying (255)
,valid_flag                     boolean
,accuracy                       character varying (12)
,unit                           character varying (12)
,primary key (code)
) with (fillfactor = 100);
