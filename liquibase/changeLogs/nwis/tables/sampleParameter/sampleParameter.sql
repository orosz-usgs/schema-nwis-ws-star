create unlogged table if not exists ${NWIS_SCHEMA_NAME}.sample_parameter
(sample_id                      integer
,v71999                         character varying (12)
,v50280                         character varying (12)
,v72015                         character varying (12)
,v82047                         character varying (12)
,v72016                         character varying (12)
,v82048                         character varying (12)
,v00003                         character varying (12)
,v00098                         character varying (12)
,v78890                         character varying (12)
,v78891                         character varying (12)
,v82398                         character varying (12)
,v84164                         character varying (12)
,v71999_fxd_nm                  character varying (20)
,v82398_fxd_tx                  character varying (80)
,v84164_fxd_tx                  character varying (80)
) with (fillfactor = 100);
