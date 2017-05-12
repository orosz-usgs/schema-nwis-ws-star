create table nwis_district_cds_by_host
(host_name                      varchar2(60 char)
,district_cd                    varchar2(3 char)
,state_name                     varchar2(60 char)
,state_postal_cd                varchar2(2 char)
,last_upd_date                  date
) parallel 4 compress pctfree 0 nologging;
