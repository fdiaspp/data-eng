FROM ubuntu:20.04 AS base

WORKDIR /content
ARG REQUIREMENTS

RUN pip install ${REQUIREMENTS}
