create unlogged table if not exists ${NWIS_SCHEMA_NAME}.cooperator_networks_staging
(cooperator_id                   integer
,net_code                        character varying (15)
);