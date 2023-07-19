# First stage - Base
ARG NODE_IMAGE=node:14-alpine
FROM $NODE_IMAGE AS base
WORKDIR /home/node/app
RUN mkdir tmp

#Second stage - dependencies
FROM base AS dependencies
COPY ./package*.json ./
RUN npm ci
COPY . .

#Third stage - build
FROM dependencies AS build
RUN node ace build --production

#Fourth stage - production
FROM base AS production
COPY ./package*.json ./
RUN npm ci --production
COPY --from=build /home/node/app/build .
EXPOSE $PORT
CMD ["node","server.js" ]
