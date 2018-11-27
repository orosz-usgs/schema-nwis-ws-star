create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.body_part
(body_part_id                   integer primary key
,body_part_nm                   character varying (32)
) with (fillfactor = 100);
