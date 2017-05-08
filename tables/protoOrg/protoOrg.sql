create table proto_org
(proto_org_cd                   varchar2(8 char)    constraint nn_proto_org_pk not null
,proto_org_nm                   varchar2(59 char)
,proto_org_fv_cd                varchar2(5 char)
,proto_org_vld_fg               varchar2(1 char)
,proto_org_init_nm              varchar2(8 char)
,proto_org_init_dt              date
,proto_org_rev_nm               varchar2(8 char)
,proto_org_rev_dt               date
,constraint proto_org_pk
  primary key (proto_org_cd)
) parallel 4 compress pctfree 0 nologging;
