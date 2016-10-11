FROM docker:1.12.1-dind

RUN mkdir /app
WORKDIR /app

ADD dmdd-agent /app
RUN dos2unix dmdd-agent

ENTRYPOINT []
CMD ["./dmdd-agent"]
