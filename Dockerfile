FROM docker:1.12.1

RUN mkdir /app
WORKDIR /app

ADD ./dmdd-agent /app/dmdd-agent

ENTRYPOINT ["./dmdd-agent"]
