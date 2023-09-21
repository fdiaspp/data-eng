
cd ./omdb-postgresql

runuser postgres -c "psql -v ON_ERROR_STOP=1 -X <<EOF
SET ROLE postgres;
DROP DATABASE IF EXISTS omdb
EOF"

runuser postgres -c "./import"