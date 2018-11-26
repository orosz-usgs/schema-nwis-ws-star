create unlogged table altitude_method
(code                           character varying (25) primary key
,name                           character varying (16)
,sort_order                     integer
,description                    character varying (255)
,valid_flag                     boolean
) with fillfactor(0)


