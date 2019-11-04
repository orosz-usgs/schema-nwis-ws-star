create unlogged table if not exists ${NWIS_SCHEMA_NAME}.agency
(code                           character varying (5)
,name                           character varying (64)
,primary key (code)
)  with (fillfactor = 100);
