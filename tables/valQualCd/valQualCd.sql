create table val_qual_cd
(val_qual_cd                    varchar2(1 char)    constraint nn_val_qual_cd_pk not null
,val_qual_tp                    varchar2(5 char)
,val_qual_srt_nu                number
,val_qual_vld_fg                varchar2(1 char)
,val_qual_nm                    varchar2(66 char)
,val_qual_ds                    varchar2(512 char)
,constraint val_qual_cd_pk
  primary key (val_qual_cd)
) parallel 4 compress pctfree 0 nologging;
