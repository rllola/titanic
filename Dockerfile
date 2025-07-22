##### BUILDER #####
FROM rust:latest AS builder

WORKDIR /usr/src/titanic
COPY . .
RUN cargo install --path .

##### RUNNER #####
FROM debian:bookworm

LABEL author="Lola Rigaut-Luczak <me@laflemme.lol>"
LABEL description="God himself could not sink this ship."

COPY --from=builder /usr/local/cargo/bin/titanic /usr/local/bin/titanic

RUN apt-get update && rm -rf /var/lib/apt/lists/*

# default env
ENV RUST_LOG="titanic=info"

ENTRYPOINT ["titanic"]