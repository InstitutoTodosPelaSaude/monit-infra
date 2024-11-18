FROM minio/minio

# CREATE A BUCKED CALLED locus
COPY setup.sh /usr/bin/setup.sh
RUN chmod +x /usr/bin/setup.sh

# Run MinIO and setup the bucket
ENTRYPOINT ["/bin/sh", "-c", "/usr/bin/setup.sh & minio server /data --console-address ':9001'"]