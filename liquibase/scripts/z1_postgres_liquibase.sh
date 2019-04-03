#!/bin/bash

# postgres to postgres db scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE}/postgres/postgres/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://${NWIS_DATABASE_ADDRESS}:5432/postgres \
	--username=postgres \
	--password=${POSTGRES_PASSWORD} \
	--logLevel=debug \
	--liquibaseCatalogName=public \
	--liquibaseSchemaName=public \
	update \
	-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
	-DNWIS_DATABASE_NAME=${NWIS_DATABASE_NAME} \
	-DNWIS_DB_OWNER_USERNAME=${NWIS_DB_OWNER_USERNAME} \
	-DNWIS_DB_OWNER_PASSWORD=${NWIS_DB_OWNER_PASSWORD} \
	-DNWIS_SCHEMA_NAME=${NWIS_SCHEMA_NAME} \
	-DNWIS_SCHEMA_OWNER_USERNAME=${NWIS_SCHEMA_OWNER_USERNAME} \
	-DNWIS_SCHEMA_OWNER_PASSWORD=${NWIS_SCHEMA_OWNER_PASSWORD} \
	-DWQP_SCHEMA_NAME=${WQP_SCHEMA_NAME} \
	-DWQP_SCHEMA_OWNER_USERNAME=${WQP_SCHEMA_OWNER_USERNAME} \
	-DWQP_SCHEMA_OWNER_PASSWORD=${WQP_SCHEMA_OWNER_PASSWORD} \

# postgres to nwis db scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE}/postgres/nwis/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://${NWIS_DATABASE_ADDRESS}:5432/${NWIS_DATABASE_NAME} \
	--username=postgres \
	--password=${POSTGRES_PASSWORD} \
	--logLevel=debug \
	--liquibaseCatalogName=public \
	--liquibaseSchemaName=public \
	update \
	-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
	-DNWIS_SCHEMA_OWNER_USERNAME=${NWIS_SCHEMA_OWNER_USERNAME} \
	-DNWIS_SCHEMA_NAME=${NWIS_SCHEMA_NAME}
