FROM node:18

RUN apt-get update && apt-get install -y \
    ffmpeg \
    pulseaudio

COPY . /app

WORKDIR /app  

RUN npm install

EXPOSE 3000 5000

CMD pulseaudio --start && node index.js
