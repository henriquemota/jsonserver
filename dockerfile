FROM node:lts-alpine
RUN apk add --no-cache tzdata
ENV TZ America/Fortaleza 
WORKDIR /app
RUN npm install -g json-server
EXPOSE 3000
CMD ["json-server", "--watch", "data.json", "--host", "0.0.0.0"]