FROM docker:1.12.1

RUN mkdir /app
WORKDIR /app

EXPOSE 8080

ADD app /app

CMD ["dmdd-agent"]
