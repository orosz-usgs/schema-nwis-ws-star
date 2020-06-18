#!/bin/bash
#!/bin/bash
# The set -e tells bash to exit immediately if a simple command fails.
# The set -o pipefail tells bash to set pipeline's return status to status of the last (rightmost) command.
# Both should be used in scripts meant to be called by Jenkins or another job runner.
set -e
set -o pipefail

# nwis schema scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE_NWIS}/nwis/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://${NWIS_DATABASE_ADDRESS}:5432/${NWIS_DATABASE_NAME} \
	--username=${NWIS_SCHEMA_OWNER_USERNAME} \
	--password=${NWIS_SCHEMA_OWNER_PASSWORD} \
	--contexts=${CONTEXTS} \
	--liquibaseCatalogName=${NWIS_SCHEMA_NAME} \
	--liquibaseSchemaName=${NWIS_SCHEMA_NAME} \
	update \
	-DNWIS_SCHEMA_OWNER_USERNAME=${NWIS_SCHEMA_OWNER_USERNAME} \
	-DNWIS_SCHEMA_NAME=${NWIS_SCHEMA_NAME} \
	-DWQP_SCHEMA_NAME=${WQP_SCHEMA_NAME} \
	-DWQP_SCHEMA_OWNER_USERNAME=${WQP_SCHEMA_OWNER_USERNAME} \
	-DOBSERVATION_SCHEMA_NAME=${OBSERVATION_SCHEMA_NAME} \
	-DWDFN_DB_READ_ONLY_USERNAME=${WDFN_DB_READ_ONLY_USERNAME}
