FROM postgres:bookworm

WORKDIR /moviesdb
COPY import_data.sh .

RUN apt-get update && \
    apt-get install -y git wget bzip2 && \
    git clone https://github.com/credativ/omdb-postgresql.git && \
    cd ./omdb-postgresql && \
    ./download
