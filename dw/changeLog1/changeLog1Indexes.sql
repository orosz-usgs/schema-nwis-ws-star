--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1SchemaIndexesAB
create bitmap index station_00000_country on station_00000 (country_cd);
--rollback drop index station_00000_country;

--changeset drsteini:1SchemaIndexesAC
create bitmap index station_00000_county on station_00000 (county_cd);
--rollback drop index station_00000_county;

--changeset drsteini:1SchemaIndexesAD
insert into user_sdo_geom_metadata
  values('STATION_00000', 'GEOM', mdsys.sdo_dim_array( mdsys.sdo_dim_element('X', -180, 180, 0.005), mdsys.sdo_dim_element('Y', -90, 90, 0.005)), 8265);
--rollback delete from user_sdo_geom_metadata where table_name = 'STATION_00000';

--changeset drsteini:1SchemaIndexesAE
create index station_00000_geom on station_00000 (geom) indextype is mdsys.spatial_index parameters('sdo_indx_dims=2 layer_gtype="POINT"');
--rollback drop index station_00000_geom;

--changeset drsteini:1SchemaIndexesAF
create bitmap index station_00000_huc on station_00000 (huc_8);
--rollback drop index station_00000_huc;

--changeset drsteini:1SchemaIndexesAG
create bitmap index station_00000_org on station_00000 (organization_id);
--rollback drop index station_00000_org;

--changeset drsteini:1SchemaIndexesAH
create bitmap index station_00000_site_type on station_00000 (site_type);
--rollback drop index station_00000_site_type;

--changeset drsteini:1SchemaIndexesAI
create bitmap index station_00000_state on station_00000 (state_cd);
--rollback drop index station_00000_state;

--changeset drsteini:1SchemaIndexesAJ
create bitmap index station_00000_station on station_00000 (station_id);
--rollback drop index station_00000_station;
