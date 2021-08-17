# pdf-me

[![lerna](https://img.shields.io/badge/maintained%20with-lerna-cc00ff.svg)](https://lerna.js.org/)

## Overview

Pdf-me is SaaS system designed to delivery document generation service build in micro-services architecture using variety of tools but mostly based on NestJs framework. Unfortunately this system has little to no value as SaaS product, it's role is to rather work as a kind of showcase.

## Development

### Requirements

To start system in development mode there is necessary to have installed couple of dependencies. First of all Node js in version at least 14, also docker and docker-compose.

### Start procedure

First of all you have to prepare environment variables for ewach service. Simply in each service folder execute

```bash
cp .env.example .env
```

To start system in development mode first of all install main dependencies. In project root run:

```bash
npm install
```

And install services dependencies:

```bash
lerna bootstrap
```

Then build shared modules:

```bash
lerna run build --scope=@pdf-me/shared --parallel
```

or in watch mode:

```bash
lerna run build:watch --scope=@pdf-me/shared --parallel
```

Then start database, rabbitMQ, redis and cloudserver:

```bash
docker-compose up
```

After that start other services in development:

```bash
lerna run start:dev --ignore=@pdf-me/shared  --parallel
```

## Production

TODO
