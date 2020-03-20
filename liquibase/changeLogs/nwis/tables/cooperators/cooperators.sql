create unlogged table if not exists ${NWIS_SCHEMA_NAME}.cooperators
(cooperator_id                     integer
,cooperator_name                   character varying (250)
,cooperator_url                    character varying (250)
,primary key (cooperator_id)
,constraint cooperator_uk1 unique (cooperator_name)
);

