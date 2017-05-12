create table body_part
(body_part_id                   number              constraint nn_body_part_pk not null
,body_part_nm                   varchar2(32 char)
,constraint body_part_pk
  primary key (body_part_id)
) parallel 4 compress pctfree 0 nologging;
