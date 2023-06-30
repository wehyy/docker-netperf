FROM debian:bookworm

RUN apt-get update && apt-get install -y iperf3 curl wget net-tools gcc make && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /tmp