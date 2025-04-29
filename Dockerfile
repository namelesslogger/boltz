FROM python:3.12-slim-bookworm AS base

RUN apt update && apt install build-essential -y

WORKDIR /root
COPY . /root/boltz/

WORKDIR /root/boltz
RUN pip install -e .

CMD ["sleep", "inf"]
