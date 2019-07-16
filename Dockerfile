FROM rabbitmq:3.7-management
ADD config/ /etc/rabbitmq/
RUN apt update -y && apt install -y netcat
