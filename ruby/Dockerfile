# Use the official Ruby image from Docker Hub
FROM ruby:latest

ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo

# Optionally set a working directory
WORKDIR /app

# Install additional dependencies (if needed)
RUN apt-get update && apt-get install -y \
    build-essential \
    libsqlite3-dev \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

RUN gem install bundler
COPY . .
RUN bundle install --jobs 4

EXPOSE 7658

# Start an interactive shell
CMD ["/bin/bash"]
