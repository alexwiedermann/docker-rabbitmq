FROM rabbitmq:3.7-management
ADD config/ /etc/rabbitmq/
RUN apt update -y && apt install -y netcat wget
RUN rabbitmq-plugins --offline enable rabbitmq_peer_discovery_etcd
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
