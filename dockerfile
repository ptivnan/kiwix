# Use the latest version of Alpine Linux
FROM alpine:latest

# Install Kiwix and its dependencies
RUN apk update \
    upgrade
RUN apk add wget \
    libzim \
    kiwix-tools

# Set the working directory
WORKDIR /kiwix

# Copy the serve script
COPY serve.sh .

# Expose port
EXPOSE 8080

# Start the Kiwix server
ENTRYPOINT ["/bin/sh", "serve.sh"]