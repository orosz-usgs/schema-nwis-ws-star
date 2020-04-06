create unlogged table if not exists ${NWIS_SCHEMA_NAME}.gw_level_approval_status
(code                           character varying (1)
,name                           character varying (64)
,sort_order                     integer
,description                    character varying (512)
,valid_flag                     boolean
,primary key (code)
) with (fillfactor = 100);
