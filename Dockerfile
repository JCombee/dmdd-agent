FROM docker:1.12.1

RUN mkdir /app
WORKDIR /app

ADD dmdd-agent /app

ENTRYPOINT []
CMD ["./dmdd-agent"]
