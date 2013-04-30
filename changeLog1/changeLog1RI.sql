create table characteristicname_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
,constraint characteristicname_pk
  primary key (code_value)
);

create table characteristictype_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
,constraint characteristictype_pk
  primary key (code_value)
);


create table country_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
,constraint country_pk
  primary key (code_value)
);

create table county_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,country_cd                     varchar2(2 char)
,state_cd                       varchar2(2 char)
,sort_order                     number
,constraint county_pk
  primary key (code_value)
);

create table organization_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
,constraint organization_pk
  primary key (code_value)
);

create table samplemedia_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
,constraint samplemedia_pk
  primary key (code_value)
);


create table sitetype_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
,constraint sitetype_pk
  primary key (code_value)
);

create table state_00000
(code_value                     varchar2(500 char)
,description_with_country       varchar2(4000 char)
,description_with_out_country   varchar2(4000 char)
,country_cd                     varchar2(2 char)
,sort_order                     number
,constraint state_pk
  primary key (code_value)
);