FROM swift:6.1.2-bookworm

RUN apt update && \
    apt install build-essential -y && \
    rm -rf /var/lib/apt/lists/*
