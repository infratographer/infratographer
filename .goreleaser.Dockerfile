FROM gcr.io/distroless/static:latest
# Copy ca-certs from alpine
COPY --from=alpine /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

# Copy the binaries that goreleaser built
COPY infra-api-gateway /infra-api-gateway

# Run the web service on container startup.
ENTRYPOINT ["/infra"]
