FROM openjdk:17-alpine

RUN apk add --no-cache curl

WORKDIR /opt

ADD https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar Lavalink.jar

COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
