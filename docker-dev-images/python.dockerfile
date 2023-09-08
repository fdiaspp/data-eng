FROM python:3.10-alpine3.17

ARG REQUIREMENTS
WORKDIR /content
COPY . .


RUN pip install ${REQUIREMENTS}
