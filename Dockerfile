FROM elixir:1.7.3-alpine
ENV HEX_MIRROR=https://hexpm.upyun.com TERM=xterm
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk update \
    && apk add --no-cache curl gcc musl-dev

ENV PATH=$PATH:/root/.cargo/bin

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

WORKDIR /opt/app
RUN mix local.rebar --force \
    && mix local.hex --force
COPY . .

# CMD mix compile
