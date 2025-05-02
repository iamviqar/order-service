FROM golang:1.22

# Install Git, Kafka CLI and other tools
RUN apt-get update && apt-get install -y     git     curl     netcat     kafkacat     && apt-get clean

# Setup working directory
WORKDIR /workspace/order-service

# Install go tools
RUN go install github.com/cosmtrek/air@latest
