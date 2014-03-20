--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:0SchemaIndexesAB
create bitmap index fa_station_co_st_cor_00000 on fa_station_00000 (country_cd, state_cd, county_cd) nologging;
--rollback drop index fa_station_co_st_cor_00000;

--changeset drsteini:0SchemaIndexesAC
create index station_id_00000 on fa_station_00000 (station_id) nologging;
--rollback drop index station_id_00000;

--changeset drsteini:0SchemaIndexesAD
insert into user_sdo_geom_metadata
  values('FA_STATION_00000', 'GEOM', mdsys.sdo_dim_array( mdsys.sdo_dim_element('X', -180, 180, 0.005), mdsys.sdo_dim_element('Y', -90, 90, 0.005)), 8265);
--rollback delete from user_sdo_geom_metadata where table_name = 'FA_STATION_00000';

--changeset drsteini:0SchemaIndexesAE
create index fa_station_geom_sp_idx_00000 on fa_station_00000 (geom) indextype is mdsys.spatial_index parameters ('SDO_INDX_DIMS=2 LAYER_GTYPE="POINT"');
--rollback drop index fa_station_geom_sp_idx_00000;

--changeset drsteini:0SchemaIndexesAF
create bitmap index fk_station_i_00000 on fa_regular_result_00000 (FK_STATION) local nologging;
--rollback drop index fk_station_i_00000;

--changeset drsteini:0SchemaIndexesAG
create bitmap index activity_id_i_00000 on fa_regular_result_00000 (ACTIVITY_ID) local nologging;
--rollback drop index activity_id_i_00000;

--changeset drsteini:0SchemaIndexesAH
create bitmap index media_nm_bm_i_00000 on fa_regular_result_00000 (activity_media_name) local nologging;
--rollback drop index media_nm_bm_i_00000;

--changeset drsteini:0SchemaIndexesAI
create bitmap index char_nm_bm_i_00000 on fa_regular_result_00000 (characteristic_name) local nologging;
--rollback drop index char_nm_bm_i_00000;

--changeset drsteini:0SchemaIndexesAJ
create bitmap index parm_i_00000 on fa_regular_result_00000 (parameter_code) local nologging;
--rollback drop index parm_i_00000;

--changeset drsteini:0SchemaIndexesAK
create bitmap index char_type_bm_i_00000 on fa_regular_result_00000 (characteristic_type) local nologging;
--rollback drop index char_type_bm_i_00000;

--changeset drsteini:0SchemaIndexesAL
create index fk_station2_i_00000 on series_catalog_00000 (fk_station) nologging;
--rollback drop index fk_station2_i_00000;

--changeset drsteini:0SchemaIndexesAM
create bitmap index nwis_station_sum_1_00000 on nwis_station_sum_00000 (station_id) nologging;
--rollback drop index nwis_station_sum_1_00000;
      
--changeset drsteini:0SchemaIndexesAN
insert into user_sdo_geom_metadata
	values('NWIS_STATION_SUM_00000', 'GEOM', mdsys.sdo_dim_array(mdsys.sdo_dim_element('X', -180, 180, 0.005), mdsys.sdo_dim_element('Y', -90, 90, 0.005)), 8265);
--rollback delete from user_sdo_geom_metadata where table_name = 'NWIS_STATION_SUM_00000';

--changeset drsteini:0SchemaIndexesAO
create index nwis_station_sum_2_00000 on nwis_station_sum_00000 (geom) indextype is mdsys.spatial_index parameters ('SDO_INDX_DIMS=2 LAYER_GTYPE="POINT"');
--rollback drop index nwis_station_sum_2_00000;

--changeset drsteini:0SchemaIndexesAP
create bitmap index nwis_station_sum_3_00000 on nwis_station_sum_00000 (state_cd, county_cd ) nologging;
--rollback drop index nwis_station_sum_3_00000;

--changeset drsteini:0SchemaIndexesAR
create bitmap index nwis_station_sum_5_00000 on nwis_station_sum_00000 (organization_id) nologging;
--rollback drop index nwis_station_sum_5_00000;

--changeset drsteini:0SchemaIndexesAS
create bitmap index nwis_station_sum_6_00000 on nwis_station_sum_00000 (hydrologic_unit_code) nologging;
--rollback drop index nwis_station_sum_6_00000;

--changeset drsteini:0SchemaIndexesAT
create bitmap index nwis_result_sum_1_00000 on nwis_result_sum_00000 (fk_station) local nologging;
--rollback drop index nwis_result_sum_1_00000;

--changeset drsteini:0SchemaIndexesAU
create bitmap index nwis_result_sum_2_00000 on nwis_result_sum_00000 (state_cd, county_cd ) local nologging;
--rollback drop index nwis_result_sum_2_00000;

--changeset drsteini:0SchemaIndexesAW
create bitmap index nwis_result_sum_4_00000 on nwis_result_sum_00000 (organization_id) local nologging;
--rollback drop index nwis_result_sum_4_00000;

--changeset drsteini:0SchemaIndexesAX
create bitmap index nwis_result_sum_5_00000 on nwis_result_sum_00000 (hydrologic_unit_code) local nologging;
--rollback drop index nwis_result_sum_5_00000;

--changeset drsteini:0SchemaIndexesAY
create bitmap index nwis_result_sum_6_00000 on nwis_result_sum_00000 (activity_media_name ) local nologging;
--rollback drop index nwis_result_sum_6_00000;

--changeset drsteini:0SchemaIndexesAZ
create bitmap index nwis_result_sum_7_00000 on nwis_result_sum_00000 (characteristic_type ) local nologging;
--rollback drop index nwis_result_sum_7_00000;

--changeset drsteini:0SchemaIndexesBA
create bitmap index nwis_result_sum_8_00000 on nwis_result_sum_00000 (characteristic_name ) local nologging;
--rollback drop index nwis_result_sum_8_00000;

--changeset drsteini:0SchemaIndexesBB
create bitmap index nwis_result_sum_9_00000 on nwis_result_sum_00000 (parameter_code) local nologging;
--rollback drop index nwis_result_sum_9_00000;

--changeset drsteini:0SchemaIndexesBC
create bitmap index nwis_result_ct_sum_1_00000 on nwis_result_ct_sum_00000 (fk_station) local nologging;
--rollback drop index nwis_result_ct_sum_1_00000;

--changeset drsteini:0SchemaIndexesBD
create bitmap index nwis_result_ct_sum_2_00000 on nwis_result_ct_sum_00000 (state_cd, county_cd ) local nologging;
--rollback drop index nwis_result_ct_sum_2_00000;

--changeset drsteini:0SchemaIndexesBF
create bitmap index nwis_result_ct_sum_4_00000 on nwis_result_ct_sum_00000 (organization_id) local nologging;
--rollback drop index nwis_result_ct_sum_4_00000;

--changeset drsteini:0SchemaIndexesBG
create bitmap index nwis_result_ct_sum_5_00000 on nwis_result_ct_sum_00000 (hydrologic_unit_code) local nologging;
--rollback drop index nwis_result_ct_sum_5_00000;

--changeset drsteini:0SchemaIndexesBH
create bitmap index nwis_result_ct_sum_6_00000 on nwis_result_ct_sum_00000 (activity_media_name ) local nologging;
--rollback drop index nwis_result_ct_sum_6_00000;

--changeset drsteini:0SchemaIndexesBI
create bitmap index nwis_result_ct_sum_7_00000 on nwis_result_ct_sum_00000 (characteristic_type ) local nologging;
--rollback drop index nwis_result_ct_sum_7_00000;

--changeset drsteini:0SchemaIndexesBJ
create bitmap index nwis_result_ct_sum_8_00000 on nwis_result_ct_sum_00000 (characteristic_name ) local nologging;
--rollback drop index nwis_result_ct_sum_8_00000;

--changeset drsteini:0SchemaIndexesBK
create bitmap index nwis_result_nr_sum_1_00000 on nwis_result_nr_sum_00000 (fk_station) local nologging;
--rollback drop index nwis_result_nr_sum_1_00000;

--changeset drsteini:0SchemaIndexesBL
create bitmap index nwis_result_nr_sum_2_00000 on nwis_result_nr_sum_00000 (activity_media_name) local nologging;
--rollback drop index nwis_result_nr_sum_2_00000;

--changeset drsteini:0SchemaIndexesBM
create bitmap index nwis_result_nr_sum_3_00000 on nwis_result_nr_sum_00000 (characteristic_type) local nologging;
--rollback drop index nwis_result_nr_sum_3_00000;

--changeset drsteini:0SchemaIndexesBN
create bitmap index nwis_result_nr_sum_4_00000 on nwis_result_nr_sum_00000 (characteristic_name) local nologging;
--rollback drop index nwis_result_nr_sum_4_00000;

--changeset drsteini:0SchemaIndexesBO
insert into user_sdo_geom_metadata
    values('HUC8_CONUS_HI_AK_PR_DIS', 'GEOM', mdsys.sdo_dim_array(mdsys.sdo_dim_element('X', -179.133392333984, 179.788208007813, 0.005), mdsys.sdo_dim_element('Y', 17.674692153931, 71.398048400879, 0.005)), 4269);
--rollback delete from user_sdo_geom_metadata where table_name = 'HUC8_CONUS_HI_AK_PR_DIS';

--changeset drsteini:0SchemaIndexesBP
create index hc8_cns_h_k_pr_ds_geom_spix on huc8_conus_hi_ak_pr_dis (geom) indextype is mdsys.spatial_index parameters ('sdo_indx_dims=2');
--rollback drop index hc8_cns_h_k_pr_ds_geom_spix;

--changeset drsteini:0SchemaIndexesBQ
insert into user_sdo_geom_metadata
    values('STATES', 'GEOM', mdsys.sdo_dim_array(mdsys.sdo_dim_element('X', -180, 180, 0.00000005), mdsys.sdo_dim_element('Y', -90, 90, 0.00000005)), 8265);
--rollback delete from user_sdo_geom_metadata where table_name = 'STATES';

--changeset drsteini:0SchemaIndexesBR
create index states_sdx on states (geom) indextype is mdsys.spatial_index parameters (' ');
--rollback drop index states_sdx;

--changeset drsteini:0SchemaIndexesBS
insert into user_sdo_geom_metadata
    values('US_COUNTIES_DIS_20121015', 'GEOM', mdsys.sdo_dim_array(mdsys.sdo_dim_element('X', -179.14734, 179.77848, 0.005), mdsys.sdo_dim_element('Y', 17.674395666, 71.389210465, 0.005)), 4269);
--rollback delete from user_sdo_geom_metadata where table_name = 'US_COUNTIES_DIS_20121015';

--changeset drsteini:0SchemaIndexesBT
create index s_cnts_ds_20121015_geom_spix on us_counties_dis_20121015 (geom) indextype is mdsys.spatial_index parameters ('sdo_indx_dims=2');
--rollback drop index s_cnts_ds_20121015_geom_spix;

--changeset drsteini:0SchemaIndexesBU
create bitmap index fa_station_primary_type_00000 on fa_station_00000 (primary_site_type) nologging;
--rollback drop index fa_station_primary_type_00000;

--changeset drsteini:0SchemaIndexesBV
create bitmap index nwis_station_sum_4_00000 on nwis_station_sum_00000 (primary_site_type) nologging;
--rollback drop index nwis_station_sum_4_00000;

--changeset drsteini:0SchemaIndexesBW
create bitmap index nwis_result_sum_3_00000 on nwis_result_sum_00000 (primary_site_type) local nologging;
--rollback drop index nwis_result_sum_3_00000;

--changeset drsteini:0SchemaIndexesBX
create bitmap index nwis_result_ct_sum_3_00000 on nwis_result_ct_sum_00000 (primary_site_type) local nologging;
--rollback drop index nwis_result_ct_sum_3_00000;

--changeset drsteini:0SchemaIndexesBY
create bitmap index nemi_url_i_00000 on fa_regular_result_00000 (nemi_url) local nologging;
--rollback drop index nemi_url_i_00000;

--changeset drsteini:0SchemaIndexesBZ
create bitmap index nwis_result_ct_sum_9_00000 on nwis_result_ct_sum_00000 (nemi_url) local nologging;
--rollback drop index nwis_result_ct_sum_9_00000;

--changeset drsteini:0SchemaIndexesCA
create bitmap index nwis_result_nr_sum_5_00000 on nwis_result_nr_sum_00000 (nemi_url) local nologging;
--rollback drop index nwis_result_nr_sum_5_00000;
