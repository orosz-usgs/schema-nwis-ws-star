create unlogged table if not exists ${NWIS_SCHEMA_NAME}.nwis_station_local
(station_id         integer
,site_id            text
,latitude           decimal
,longitude          decimal
,huc                character varying (12)
,calculated_huc_12  character varying (12)
,geom               geometry(point,4269)
)