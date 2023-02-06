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

# Expose port
EXPOSE 8080

# Start the Kiwix server
ENTRYPOINT ["/bin/sh", "kiwix-manage /kiwix/library.xml add *.zim  && kiwix-serve -M -v --library /kiwix/library.xml --port 8080"]