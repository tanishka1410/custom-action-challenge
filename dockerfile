FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    bash \
    jq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
