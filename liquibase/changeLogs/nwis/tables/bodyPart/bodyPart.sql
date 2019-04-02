create unlogged table if not exists ${NWIS_SCHEMA_NAME}.body_part
(body_part_id                   integer
,body_part_nm                   character varying (32)
,primary key (body_part_id)
) with (fillfactor = 100);
