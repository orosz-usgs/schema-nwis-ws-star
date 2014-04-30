delete from fa_station;
insert into fa_station
   (pk_isn, station_id, station_name, organization_id, latitude, 
    longitude, map_scale, elevation, hydrologic_unit_code, source_system, 
    horiz_datum_name, vertical_datum_name, country_cd, country_name, state_cd, 
    state_name, county_cd, county_name, state_postal_cd, land_net_ds, 
    station_type_name, geopositioning_method, geopositioning_accuracy_value, geopositioning_accuracy_units, vertical_accuracy_value, 
    vertical_accuracy_units, nat_aqfr_name, aqfr_name, well_depth_ft_blw_land_sfc_va, hole_depth_ft_blw_land_sfc_va, 
    construction_date_tx, elev_units, organization_name, state_fips, primary_site_type)
 values
   (782868, 'USGS-420158093562001', '083N27W01ABCA 41167 1976Ogden 5', 'USGS-IA', 42.0327602, 
    -93.9391185, '24000', '883.33', '07100004', 'NWISWeb', 
    'NAD83', 'NAVD88', 'US', 'UNITED STATES OF AMERICA', '19', 
    'IOWA', '015', 'BOONE', 'IA', 'SWNWNES01 T083N R27W  5', 
    'Well', 'Interpolated from map', '5', 'seconds', '.01', 
    'feet', 'Sand and gravel aquifers (glaciated regions)', 'Holocene Alluvium', 57, 57, 
    '19760101', 'feet', 'USGS Iowa Water Science Center', 19, 'Well');
    SET DEFINE OFF;
insert into fa_station
   (pk_isn, station_id, station_name, organization_id, latitude, 
    longitude, hydrologic_unit_code, source_system, horiz_datum_name, country_cd, 
    country_name, state_cd, state_name, county_cd, county_name, 
    state_postal_cd, station_type_name, geopositioning_method, geopositioning_accuracy_value, geopositioning_accuracy_units, 
    organization_name, state_fips, primary_site_type)
 values
   (1364422, 'USGS-435313089392000', 'PATRICK LAKE NEAR GRAND MARSH, WI', 'USGS-WI', 43.8869189, 
    -89.6556799, '04030201', 'NWISWeb', 'NAD83', 'US', 
    'UNITED STATES OF AMERICA', '55', 'WISCONSIN', '001', 'ADAMS', 
    'WI', 'Lake, Reservoir, Impoundment', 'Interpolated from map', '1', 'seconds', 
    'USGS Wisconsin Water Science Center', 55, 'Lake, Reservoir, Impoundment');