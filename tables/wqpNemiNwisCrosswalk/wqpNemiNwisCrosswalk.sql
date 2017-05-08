create table wqp_nemi_nwis_crosswalk
(analytical_procedure_source    varchar2(100 char)
,analytical_procedure_id        varchar2(100 char)
,citation_method_num            varchar2(100 char)
,method_id                      number
,wqp_source                     varchar2(100 char)
,method_type                    varchar2(100 char)
,nemi_url                       varchar2(4000 char)
) parallel 4 compress pctfree 0 nologging;
