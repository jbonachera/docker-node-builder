FROM node:8
ENV TZ=Europe/Paris
RUN apt-get update && apt-get install -y git python make g++ tzdata zip && \
    ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime && \
    rm -rf /var/cache/apt/*
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
    apt-get update && \
    apt-get install -y google-chrome-stable && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir -p /usr/local/src/app
WORKDIR /usr/local/src/app
