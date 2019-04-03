#!/bin/bash

# nwis schema scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE}/nwis/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://${NWIS_DATABASE_ADDRESS}:5432/${NWIS_DATABASE_NAME} \
	--username=${NWIS_SCHEMA_OWNER_USERNAME} \
	--password=${NWIS_SCHEMA_OWNER_PASSWORD} \
	--logLevel=debug \
	--liquibaseCatalogName=${NWIS_SCHEMA_NAME} \
	--liquibaseSchemaName=${NWIS_SCHEMA_NAME} \
	update \
	-DNWIS_SCHEMA_OWNER_USERNAME=${NWIS_SCHEMA_OWNER_USERNAME} \
	-DNWIS_SCHEMA_NAME=${NWIS_SCHEMA_NAME} \
	-DWQP_SCHEMA_OWNER_USERNAME=${WQP_SCHEMA_OWNER_USERNAME}
