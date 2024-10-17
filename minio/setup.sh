#!/bin/sh

# Wait for MinIO to start up
sleep 5

# Create the alias for the MinIO client
mc alias set itps http://localhost:9000 "$MINIO_ROOT_USER" "$MINIO_ROOT_PASSWORD"

# Create the bucket 'locus'
mc mb itps/data
mc mb itps/public
mc anonymous set public itps/public

# CREATE 'RESPAT' FOLDERS
mc mb --ignore-existing itps/data/respat/data/dbmol
mc mb --ignore-existing itps/data/respat/data/einstein
mc mb --ignore-existing itps/data/respat/data/fleury
mc mb --ignore-existing itps/data/respat/data/hilab
mc mb --ignore-existing itps/data/respat/data/hlagyn
mc mb --ignore-existing itps/data/respat/data/sabin

mc mb --ignore-existing itps/data/respat/data/dbmol/_out
mc mb --ignore-existing itps/data/respat/data/einstein/_out
mc mb --ignore-existing itps/data/respat/data/fleury/_out
mc mb --ignore-existing itps/data/respat/data/hilab/_out
mc mb --ignore-existing itps/data/respat/data/hlagyn/_out
mc mb --ignore-existing itps/data/respat/data/sabin/_out

mc mb --ignore-existing itps/data/respat/data/combined
mc mb --ignore-existing itps/data/respat/data/matrices


mc mb --ignore-existing itps/data/arbo/data/dbmol
mc mb --ignore-existing itps/data/arbo/data/einstein
mc mb --ignore-existing itps/data/arbo/data/fleury
mc mb --ignore-existing itps/data/arbo/data/hilab
mc mb --ignore-existing itps/data/arbo/data/hlagyn
mc mb --ignore-existing itps/data/arbo/data/sabin

mc mb --ignore-existing itps/data/arbo/data/dbmol/_out
mc mb --ignore-existing itps/data/arbo/data/einstein/_out
mc mb --ignore-existing itps/data/arbo/data/fleury/_out
mc mb --ignore-existing itps/data/arbo/data/hilab/_out
mc mb --ignore-existing itps/data/arbo/data/hlagyn/_out
mc mb --ignore-existing itps/data/arbo/data/sabin/_out

mc mb --ignore-existing itps/data/arbo/data/combined
mc mb --ignore-existing itps/data/arbo/data/matrices

echo "MinIO setup complete. Buckets and folders are ready."