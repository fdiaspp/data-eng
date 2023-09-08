FROM python:3.10-alpine3.17

WORKDIR /content
ARG REQUIREMENTS

RUN pip install ${REQUIREMENTS}
