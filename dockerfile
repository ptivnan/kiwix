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

# Get a zim file to test
RUN wget https://download.kiwix.org/zim/wikipedia/wikipedia_en_100_maxi_2023-01.zim

# Expose port
EXPOSE 8080

# Start the Kiwix server
ENTRYPOINT ["/bin/sh", "serve.sh"]