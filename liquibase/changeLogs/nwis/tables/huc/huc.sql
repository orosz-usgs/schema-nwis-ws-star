create unlogged table if not exists ${NWIS_SCHEMA_NAME}.huc
(code                           character varying (5)
,name                           character varying (64)
,class_code                     character varying (1)
,primary key (code)
)  with (fillfactor = 100);
