# https://github.com/Linuxbrew/brew/blob/1.9.3/Dockerfile
FROM linuxbrew/linuxbrew:1.9.3

WORKDIR /var/altogether
COPY . .
RUN make init lint
