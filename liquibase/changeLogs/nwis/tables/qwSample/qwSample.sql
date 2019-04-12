create unlogged table if not exists ${NWIS_SCHEMA_NAME}.qw_sample
(sample_id                      integer
,site_id                        integer
,record_no                      character varying (8)
,nwis_host                      character varying (12)
,db_no                          character varying (2)
,qw_db_no                       character varying (2)
,sample_web_cd                  boolean
,sample_start_dt                timestamp
,sample_start_display_dt        character varying (19)
,sample_start_sg                character varying (1)
,sample_end_dt                  character varying (19)
,sample_end_display_dt          character varying (19)
,sample_end_sg                  character varying (1)
,sample_utc_start_dt            date
,sample_utc_start_display_dt    character varying (19)
,sample_utc_end_dt              character varying (19)
,sample_utc_end_display_dt      character varying (19)
,sample_start_time_datum_cd     character varying (6)
,medium_cd                      character varying (3)
,tu_id                          character varying (11)
,body_part_id                   character varying (11)
,nwis_sample_id                 character varying (11)
,lab_no                         character varying (7)
,project_cd                     character varying (9)
,aqfr_cd                        character varying (8)
,samp_type_cd                   character varying (1)
,sample_lab_cm_tx               character varying (300)
,sample_field_cm_tx             character varying (300)
,coll_ent_cd                    character varying (8)
,anl_stat_cd                    character varying (1)
,anl_src_cd                     character varying (1)
,anl_type_tx                    character varying (27)
,hyd_cond_cd                    character varying (1)
,hyd_event_cd                   character varying (1)
,tm_datum_rlbty_cd              character varying (1)
,sample_md                      date
,qw_sample_md                   date
) with (fillfactor = 100);
