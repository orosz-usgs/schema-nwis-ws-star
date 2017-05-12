create table tu
(tu_id                          number              constraint nn_tu_pk not null
,tu_1_cd                        varchar2(1 char)
,tu_1_nm                        varchar2(35 char)
,tu_2_cd                        varchar2(1 char)
,tu_2_nm                        varchar2(35 char)
,tu_3_cd                        varchar2(7 char)
,tu_3_nm                        varchar2(35 char)
,tu_4_cd                        varchar2(7 char)
,tu_4_nm                        varchar2(35 char)
,tu_unnm_cd                     varchar2(1 char)
,tu_use_cd                      varchar2(12 char)
,tu_unaccp_rsn_tx               varchar2(24 char)
,tu_cred_rat_tx                 varchar2(40 char)
,tu_cmplt_rat_cd                varchar2(10 char)
,tu_curr_rat_cd                 varchar2(7 char)
,tu_phyl_srt_nu                 number
,tu_cr                          date
,tu_par_id                      number
,tu_tax_auth_id                 number
,tu_hybr_auth_id                number
,tu_king_id                     number
,tu_rnk_id                      number
,tu_md                          date
,constraint tu_pk
  primary key (tu_id)
) parallel 4 compress pctfree 0 nologging;
