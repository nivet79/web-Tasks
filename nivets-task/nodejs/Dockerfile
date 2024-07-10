FROM node:18-alpine AS build

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm i

COPY . .

FROM node:18-alpine

RUN addgroup -S nivetgroup && adduser -S nivet -G nivetgroup

WORKDIR /usr/src/app

COPY --from=build /usr/src/app .

RUN chown -R nivet:nivetgroup /usr/src/app && \
    find /usr/src/app -type d -exec chmod 555 {} \; && \
    find /usr/src/app -type f -exec chmod 444 {} \;

USER nivet

EXPOSE 3000

CMD ["node", "app.js"]

