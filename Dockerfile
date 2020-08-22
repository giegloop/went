FROM alpine

RUN apk update && apk --no-cache add ca-certificates unzip && \
    wget -O chisel.gz https://github.com/jpillora/chisel/releases/download/v1.7.0-rc7/chisel_1.7.0-rc7_linux_amd64.gz && \
    gunzip chisel.gz && \
    chmod 700 chisel
    
    
CMD ./chisel  server --auth ueient:u8738yuenUUIENyeu --socks5 --reverse
