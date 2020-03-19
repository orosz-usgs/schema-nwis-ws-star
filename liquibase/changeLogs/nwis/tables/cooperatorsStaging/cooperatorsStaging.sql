create unlogged table if not exists ${NWIS_SCHEMA_NAME}.cooperators_staging
(cooperator_id                     integer
,cooperator_name                   character varying (250)
,cooperator_url                    character varying (250)
);