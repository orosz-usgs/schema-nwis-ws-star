create unlogged table if not exists ${NWIS_SCHEMA_NAME}.gw_levels
(site_id                        integer
,lev_str_dt                     character varying (19)
,lev_dtm                        timestamp
,lev_dt_acy_cd                  character varying (1)
,lev_tz_cd                      character varying (6)
,lev_tz_offset                  character varying (6)
,lev_va                         character varying (7)
,lev_acy_cd                     character varying (1)
,parameter_cd                   character varying (5)
,lev_datum_cd                   character varying (9)
,lev_src_cd                     character varying (1)
,lev_status_cd                  character varying (1)
,lev_meth_cd                    character varying (1)
,lev_agency_cd                  character varying (5)
,lev_age_cd                     character varying (1)
,gw_levels_md                   timestamp
) with (fillfactor = 100);
