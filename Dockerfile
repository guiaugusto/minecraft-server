# Minecraft Craftbukkit 1.14.2 Dockerfile

FROM debian:buster
LABEL LAPPIS <webmaster.fga@gmail.com>

RUN apt-get update && apt-get install -y default-jdk wget screen g++ 

WORKDIR /data
VOLUME /data

COPY . .

EXPOSE 25565

# Automatically accept Minecraft EULA, and start Minecraft server
CMD echo eula=true > /data/eula.txt && screen -S minecraft && java -Xms2G -jar ./craftbukkit-1.14.2-R0.1-SNAPSHOT.jar nogui

