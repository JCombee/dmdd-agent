FROM docker:1.12.1-dind

RUN mkdir /app
WORKDIR /app

ADD dmdd-agent /app

ENTRYPOINT ["./dmdd-agent"]
