# Informations

Dockerfile for building and running [VisualReview](https://github.com/xebia/VisualReview) server.

Based on latest versions of Alpine (3.4), JDK (1.8) and VisualReview (0.1.4).

## Install & run

```shell
docker build -t visualreview .
docker run -d visualreview
```

After running docker container, VisualReview is accessible at `http://localhost:7000`.
