FROM mysql:5.7.22
EXPOSE 3307
COPY ./app/src/main/resources/db/migration/ /home/database/
COPY ./app/src/main/resources/ci/init_database.sh /docker-entrypoint-initdb.d/init_database.sh