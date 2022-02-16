FROM ghcr.io/clj-holmes/clj-holmes:main

RUN apt-get update && apt-get upgrade -y 

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
