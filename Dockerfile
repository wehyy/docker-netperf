FROM debian:buster

RUN apt-get update && apt-get install -y procps iproute2 sysstat git iperf3 curl wget net-tools gcc make && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /tmp
RUN curl -LO https://github.com/HewlettPackard/netperf/archive/refs/tags/netperf-2.7.0.tar.gz && tar -xzf netperf-2.7.0.tar.gz && mv netperf-netperf-2.7.0/ netperf-2.7.0
RUN cd netperf-2.7.0 && ./configure --prefix=/usr/local --bindir /usr/local/bin && make && make install