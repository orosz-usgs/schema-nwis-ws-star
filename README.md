# schema\-nwis\-ws\-star

Liquibase scripts for creating the NWIS\_WS\_STAR database schema objects. They are used for both the Water Quality Portal (WQP) and the Internal Water Quality Data Delivery systems.

The scripts are executed via a Jenkins job.

Parameters used for configuration:

* **externalOwnerName** - The limited privilege schema used by applications to access this schema.

* **internalOwnerName** - The schema in which these scripts are run and objects created.

* **nemi\_data\_pwd** - The password used in creating database links to the nemi repository.

* **nwq\_data\_checks\_pwd** - The password used in creating database links to the data checks repository.

* **nawqadb\_pwd** - The password used in creating database links to the NATDB repository.
