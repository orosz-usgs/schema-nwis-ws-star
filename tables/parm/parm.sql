create table parm
(parm_cd                        varchar2(5 char)    constraint nn_parm_pk not null
,parm_nm                        varchar2(29 char)
,parm_rmk_tx                    varchar2(256 char)
,parm_unt_tx                    varchar2(10 char)
,parm_seq_nu                    number
,parm_seq_grp_cd                varchar2(3 char)
,parm_ds                        varchar2(170 char)
,parm_medium_tx                 varchar2(30 char)
,parm_frac_tx                   varchar2(24 char)
,parm_temp_tx                   varchar2(12 char)
,parm_stat_tx                   varchar2(25 char)
,parm_tm_tx                     varchar2(12 char)
,parm_wt_tx                     varchar2(15 char)
,parm_size_tx                   varchar2(64 char)
,parm_entry_fg                  varchar2(1 char)
,parm_public_fg                 varchar2(1 char)
,parm_neg_fg                    varchar2(1 char)
,parm_zero_fg                   varchar2(1 char)
,parm_null_fg                   varchar2(1 char)
,parm_ts_fg                     varchar2(1 char)
,parm_init_dt                   date
,parm_init_nm                   varchar2(16 char)
,parm_rev_dt                    date
,parm_rev_nm                    varchar2(16 char)
,parm_seq_grp_nm                varchar2(32 char)
,wqpcrosswalk                   varchar2(1200 char)
,srsname                        varchar2(1200 char)
,multiplier                     varchar2(6 char)
,constraint parm_pk
  primary key (parm_cd)
) parallel 4 compress pctfree 0 nologging;
