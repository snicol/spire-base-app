# Spire base app repo 

# Pull base image.
FROM alpine:3.3

# Install Ruby.
RUN apk add ruby && \
  rm -rf /var/cache/apk/* && \
  cd /app && bundle install

# Define working directory.
WORKDIR /app

# Define default command.
CMD ["bash"]
