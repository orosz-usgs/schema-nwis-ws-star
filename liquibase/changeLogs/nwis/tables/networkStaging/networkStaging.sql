create table if not exists ${NWIS_SCHEMA_NAME}.network_staging
(number_from_csv                         character varying (15)
,net_code                                character varying (15)
,net_name                                character varying (255)
);