# Node.js (latest lts version)
FROM node:8-alpine

# Create folders
RUN mkdir -p /usr/bin/tgibf/

# Set application workdir
WORKDIR /usr/bin/tgibf/

# Copy application
COPY . .

# Webhook
ENV WEBHOOK='http://192.168.33.50:5000'

# Installing git
RUN apk update && \
    apk upgrade && \
    apk add ca-certificates && update-ca-certificates && \
    apk add --update tzdata && \
    apk add --update && \
    rm -rf /var/cache/apk/*

# Install dependencies
RUN npm install

# Set timezone
ENV TZ=America/Sao_Paulo

# Expose volumes
VOLUME ["/var/log/tgibf/"]

# Start app
CMD ["npm", "start"]
