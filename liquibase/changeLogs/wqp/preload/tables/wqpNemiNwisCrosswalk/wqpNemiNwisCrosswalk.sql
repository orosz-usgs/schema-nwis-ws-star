create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.wqp_nemi_nwis_crosswalk
(analytical_procedure_source    character varying (100)
,analytical_procedure_id        character varying (100)
,citation_method_num            character varying (100)
,method_id                      integer
,wqp_source                     character varying (100)
,method_type                    character varying (100)
,nemi_url                       text
) with (fillfactor = 100);
