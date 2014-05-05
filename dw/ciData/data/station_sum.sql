delete from nwis_station_sum;
Insert into nwis_station_sum
   (PK_ISN, STATION_ID, STATION_NAME, COUNTRY_CD, STATE_CD, 
    COUNTY_CD, PRIMARY_SITE_TYPE, ORGANIZATION_ID, ORGANIZATION_NAME, NAT_AQFR_NAME, 
    HYDROLOGIC_UNIT_CODE, WELL_DEPTH_FT_BLW_LAND_SFC_VA, WELL_DEPTH_FT_BLW_LAND_SFC_UN, RESULT_COUNT, geom)
 Values
   (782868, 'USGS-420158093562001', '083N27W01ABCA 41167 1976Ogden 5', 'US', '19', 
    '015', 'Well', 'USGS-IA', 'USGS Iowa Water Science Center', 'Sand and gravel aquifers (glaciated regions)', 
    '07100004', 57, 'ft', 185,
    mdsys.sdo_geometry(2001,8265,mdsys.sdo_point_type(round(-93.9391185, 7),round(42.0327602, 7), null), null, null));
Insert into nwis_station_sum
   (PK_ISN, STATION_ID, STATION_NAME, COUNTRY_CD, STATE_CD, 
    COUNTY_CD, PRIMARY_SITE_TYPE, ORGANIZATION_ID, ORGANIZATION_NAME, HYDROLOGIC_UNIT_CODE, 
    RESULT_COUNT, geom)
 Values
   (1364422, 'USGS-435313089392000', 'PATRICK LAKE NEAR GRAND MARSH, WI', 'US', '55', 
    '001', 'Lake, Reservoir, Impoundment', 'USGS-WI', 'USGS Wisconsin Water Science Center', '04030201', 
    168,
    mdsys.sdo_geometry(2001,8265,mdsys.sdo_point_type(round(-89.6556799, 7),round(43.8869189, 7), null), null, null));