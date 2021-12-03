FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y && apt-get install -y curl

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN curl -L https://github.com/clj-holmes/clj-holmes/releases/latest/download/clj-holmes-ubuntu-latest -o /usr/bin/clj-holmes
RUN chmod +x /usr/bin/clj-holmes

ENTRYPOINT ["/entrypoint.sh"]
