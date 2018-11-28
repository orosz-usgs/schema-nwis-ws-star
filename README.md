# schema\-nwis\-ws\-star

Liquibase scripts for creating the NWIS\_WS\_STAR database schema objects in a Postgres database. They 
are used for both the Water Quality Portal (WQP) and the Internal Water Quality Data Delivery systems.
The repo also includes Docker Compose scripts to setup a continuous integration PostGIS database.

In order to use the docker compose scripts, you will need to create a .env file in the project directory containing
the following (shown are example values):
```
POSTGRES_PASSWORD=<changeMe>

NWIS_WS_STAR_OWNER=nwis_ws_star_owner
NWIS_WS_STAR_OWNER_PASSWORD=<changeMe>
NWIS_WS_STAR_DATABASE_NAME=ars_stewards_db
NWIS_WS_STAR_SCHEMA_NAME=ars_stewards

EXTERNAL_OWNER=wqp_core
EXTERNAL_OWNER_PASSWORD=<changeMe>
INTERNAL_OWNER=int_wqp
INTERNAL_OWNER_PASSWORD=<changeMe>

```

To create a postgres database and then run the liquibase scripts:
```
% docker-compose up -d db
% docker-compose up liquibase
```

The PostGIS database will be available on port 5434

Other Helpful commands include:
* __docker-compose up__ to create and start the containers
* __docker-compose ps__ to list the containers
* __docker-compose stop__ or __docker-compose kill__ to stop the containers
* __docker-compose start__ to start the containers
* __docker-compose rm__ to remove all containers
* __docker network inspect pubsdb_default__ to get the ip addresses of the running containers
* __docker-compose ps -q__ to get the Docker Compose container ids
* __docker ps -a__ to list all the Docker containers
* __docker rm <containerId>__ to remove a container
* __docker rmi <imageId>__ to remove an image
* __docker logs <containerID>__ to view the Docker Compose logs in a container
