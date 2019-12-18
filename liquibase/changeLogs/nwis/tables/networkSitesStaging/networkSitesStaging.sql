create table if not exists ${NWIS_SCHEMA_NAME}.network_sites_staging
(net_code                                character varying (15)
,site_no                                 character varying (30)
,net_name                                character varying (255)
);
