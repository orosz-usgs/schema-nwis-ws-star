create table lat_long_accuracy
(code                           varchar2(25 char)   constraint nn_lat_long_accuracy_pk not null
,name                           varchar2(16 char)
,sort_order                     number
,description                    varchar2(255 char)
,valid_flag                     varchar2(1 char)
,accuracy                       varchar2(12 char)
,unit                           varchar2(12 char)
,constraint lat_long_accuracy_pk
  primary key (code)
) parallel 4 compress pctfree 0 nologging;
