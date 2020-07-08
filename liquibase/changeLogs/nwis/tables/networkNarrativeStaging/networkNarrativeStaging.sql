create table if not exists ${NWIS_SCHEMA_NAME}.network_narrative_staging
(	network_code varchar(15) NULL,
	narrative_text text NULL
);
