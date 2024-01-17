FROM ruby:3.0.0 AS base
ENV DEBIAN_FRONTEND=noninteractive
ENV NODE_VERSION 21
RUN curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash -
RUN apt-get update && apt-get install nodejs fish -y
RUN npm install -g n yarn
WORKDIR /app

FROM base AS development