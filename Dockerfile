FROM docker:1.12.1-dind

RUN mkdir /app
WORKDIR /app

ADD app /app

ENTRYPOINT ["./app"]
CMD ["true"]