FROM koyeb/koyeb-cli:v2.11.0 AS base

FROM ubuntu:22.10

COPY --from=base /koyeb /bin/koyeb
ENTRYPOINT ["/bin/koyeb"]