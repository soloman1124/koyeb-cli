FROM koyeb/koyeb-cli:v2.11.0 AS base

FROM ubuntu:22.10

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates && \
    rm -rf /var/lib/apt/lists/*

COPY --from=base /koyeb /bin/koyeb
ENTRYPOINT ["/bin/koyeb"]