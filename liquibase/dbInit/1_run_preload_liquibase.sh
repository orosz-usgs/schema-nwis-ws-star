#!/bin/bash

# postgres to postgres db scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE}/postgres/postgres/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://NWIS_WS_Star_Database:5432/postgres \
	--username=postgres \
	--password=${POSTGRES_PASSWORD} \
	--logLevel=debug \
	update \
	-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
	-DNWIS_WS_STAR_DATABASE_NAME=${NWIS_WS_STAR_DATABASE_NAME} \
	-DNWIS_WS_STAR_OWNER=${NWIS_WS_STAR_OWNER} \
	-DNWIS_WS_STAR_OWNER_PASSWORD=${NWIS_WS_STAR_OWNER_PASSWORD} \
	 > $LIQUIBASE_HOME/logs/liquibasePostgres.log

# postgres to pubs db scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE}/postgres/wqp/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://NWIS_WS_Star_Database:5432/${NWIS_WS_STAR_DATABASE_NAME} \
	--username=postgres \
	--password=${POSTGRES_PASSWORD} \
	--logLevel=debug \
	update \
	-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
	-DNWIS_WS_STAR_OWNER=${NWIS_WS_STAR_OWNER} \
	-DNWIS_WS_STAR_SCHEMA_NAME=${NWIS_WS_STAR_SCHEMA_NAME} \
	 > $LIQUIBASE_HOME/logs/liquibaseWQP.log