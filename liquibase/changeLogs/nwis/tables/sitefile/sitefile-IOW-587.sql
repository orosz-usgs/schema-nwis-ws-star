alter table ${NWIS_SCHEMA_NAME}.sitefile
 add column if not exists site_active character varying (1)
;
