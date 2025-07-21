FROM swift:6.1.2-noble

RUN apt-get update && \
    apt-get install build-essential -y && \
    rm -rf /var/lib/apt/lists/*
