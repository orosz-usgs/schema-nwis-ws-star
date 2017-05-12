create table qw_sample
(sample_id                      number
,site_id                        number
,record_no                      varchar2(8 char)
,nwis_host                      varchar2(12 char)
,db_no                          varchar2(2 char)
,qw_db_no                       varchar2(2 char)
,sample_web_cd                  varchar2(1 char)
,sample_start_dt                date
,sample_start_display_dt        varchar2(19 char)
,sample_start_sg                varchar2(1 char)
,sample_end_dt                  varchar2(19 char)
,sample_end_display_dt          varchar2(19 char)
,sample_end_sg                  varchar2(1 char)
,sample_utc_start_dt            date
,sample_utc_start_display_dt    varchar2(19 char)
,sample_utc_end_dt              varchar2(19 char)
,sample_utc_end_display_dt      varchar2(19 char)
,sample_start_time_datum_cd     varchar2(6 char)
,medium_cd                      varchar2(3 char)
,tu_id                          varchar2(11 char)
,body_part_id                   varchar2(11 char)
,nwis_sample_id                 varchar2(11 char)
,lab_no                         varchar2(7 char)
,project_cd                     varchar2(9 char)
,aqfr_cd                        varchar2(8 char)
,samp_type_cd                   varchar2(1 char)
,sample_lab_cm_tx               varchar2(300 char)
,sample_field_cm_tx             varchar2(300 char)
,coll_ent_cd                    varchar2(8 char)
,anl_stat_cd                    varchar2(1 char)
,anl_src_cd                     varchar2(1 char)
,anl_type_tx                    varchar2(27 char)
,hyd_cond_cd                    varchar2(1 char)
,hyd_event_cd                   varchar2(1 char)
,tm_datum_rlbty_cd              varchar2(1 char)
,sample_md                      date
,qw_sample_md                   date
) parallel 4 compress pctfree 0 nologging;
