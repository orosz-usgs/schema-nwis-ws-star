create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.nwis_district_cds_by_host
(host_name                      character varying (60)
,district_cd                    character varying (3)
,state_name                     character varying (60)
,state_postal_cd                character varying (2)
,last_upd_date                  date
) with (fillfactor = 100);
