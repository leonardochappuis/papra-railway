# syntax=docker/dockerfile:1
FROM ghcr.io/papra-hq/papra:latest

USER root                
RUN mkdir -p /app-data \
 && chown -R 1001:1001 /app-data

USER 1001
VOLUME ["/app-data"]

EXPOSE 1221
