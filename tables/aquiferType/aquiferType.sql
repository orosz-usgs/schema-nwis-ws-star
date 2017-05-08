create table aquifer_type
(code                           varchar2(25 char)   constraint nn_aquifer_type_pk not null
,name                           varchar2(16 char)
,sort_order                     number
,description                    varchar2(255 char)
,valid_flag                     varchar2(1 char)
,constraint aquifer_type_pk
  primary key (code)
) parallel 4 compress pctfree 0 nologging;
