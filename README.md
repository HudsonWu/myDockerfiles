# Dockerfile

## DEBIAN_FRONTEND=noninteractive

```
# ARG
ARG DEBIAN_FRONTEND=noninteractive

# ENV
ENV DEBIAN_FRONTEND noninteractive
...
ENV DEBIAN_FRONTEND teletype

# on-the-fly
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -qq install {your-package}
```
