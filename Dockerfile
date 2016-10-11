FROM docker:1.12.1

RUN mkdir /app
WORKDIR /app

COPY ./dmdd-agent /app/dmdd-agent

CMD ["dmdd-agent"]
