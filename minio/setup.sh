#!/bin/sh

# Wait for MinIO to start up
sleep 5

# Create the alias for the MinIO client
mc alias set itps http://localhost:9000 "$MINIO_ROOT_USER" "$MINIO_ROOT_PASSWORD"

# Create the bucket 'data'
mc mb itps/data
mc mb itps/public
mc anonymous set public itps/public

LABS=(dbmol einstein fleury hilab hlagyn sabin hpardini target)

# CREATE RESPAT "FOLDERS"
for LAB in "${LABS[@]}"; do
  mc mb --ignore-existing "itps/data/respat/data/$LAB"
  mc mb --ignore-existing "itps/data/respat/data/$LAB/_out"
done

mc mb --ignore-existing itps/data/respat/data/combined
mc mb --ignore-existing itps/data/respat/data/matrices


# CREATE ARBO "FOLDERS"
for LAB in "${LABS[@]}"; do
  mc mb --ignore-existing "itps/data/arbo/data/$LAB"
  mc mb --ignore-existing "itps/data/arbo/data/$LAB/_out"
done

mc mb --ignore-existing itps/data/arbo/data/combined
mc mb --ignore-existing itps/data/arbo/data/matrices

mc anonymous set public itps/data/arbo/data/matrices
mc anonymous set public itps/data/respat/data/matrices

echo "MinIO setup complete. Buckets and folders are ready."