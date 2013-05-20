--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1SchemaIndexesAA
insert into user_sdo_geom_metadata
  values('US_COUNTIES_DIS_20121015', 'GEOM', mdsys.sdo_dim_array( mdsys.sdo_dim_element('X', -179.14734, 179.77848, 0.005), mdsys.sdo_dim_element('Y', 17.674395666, 71.389210465, 0.005)), 4269);
--rollback delete from user_sdo_geom_metadata where table_name = 'US_COUNTIES_DIS_20121015';

--changeset drsteini:1SchemaIndexesAB
create index s_cnts_ds_20121015_geom_spix on us_counties_dis_20121015 (geom) indextype is mdsys.spatial_index parameters('sdo_indx_dims=2');
--rollback drop index s_cnts_ds_20121015_geom_spix;

--changeset drsteini:1SchemaIndexesAC
insert into user_sdo_geom_metadata
  values('HUC8_CONUS_HI_AK_PR_DIS', 'GEOM', mdsys.sdo_dim_array( mdsys.sdo_dim_element('X', -179.14734, 179.77848, 0.005), mdsys.sdo_dim_element('Y', 17.674395666, 71.389210465, 0.005)), 4269);
--rollback delete from user_sdo_geom_metadata where table_name = 'HUC8_CONUS_HI_AK_PR_DIS';

--changeset drsteini:1SchemaIndexesAD
create index hc8_cns_h_k_pr_ds_geom_spix on huc8_conus_hi_ak_pr_dis (geom) indextype is mdsys.spatial_index parameters('sdo_indx_dims=2');
--rollback drop index hc8_cns_h_k_pr_ds_geom_spix;

--changeset drsteini:1SchemaIndexesAE
insert into user_sdo_geom_metadata
  values('STATES', 'GEOM', mdsys.sdo_dim_array( mdsys.sdo_dim_element('X', -180, 180, 0.005), mdsys.sdo_dim_element('Y', -90, 90, 0.005)), 8265);
--rollback delete from user_sdo_geom_metadata where table_name = 'STATES';

--changeset drsteini:1SchemaIndexesAF
create index states_sdx on states (geom) indextype is mdsys.spatial_index parameters(' ');
--rollback drop index states_sdx;
