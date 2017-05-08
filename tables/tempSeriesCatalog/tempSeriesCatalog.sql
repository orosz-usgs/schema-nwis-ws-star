create table temp_series_catalog
(site_id                        number
,data_type_cd                   varchar2(2 char)
,parm_cd                        varchar2(5 char)
,stat_cd                        varchar2(5 char)
,loc_nm                         varchar2(64 char)
,medium_grp_cd                  varchar2(3 char)
,parm_grp_cd                    varchar2(3 char)
,srs_id                         number
,access_cd                      number
,begin_date                     varchar2(10 char)
,end_date                       varchar2(10 char)
,count_nu                       number
,series_catalog_md              date
) parallel 4 compress pctfree 0 nologging;
