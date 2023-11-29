# Use the official Ruby image from Docker Hub
FROM ruby:latest

# Install additional dependencies (if needed)
RUN apt-get update && apt-get install -y \
    build-essential \
    libsqlite3-dev \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

# Start an interactive shell
CMD ["/bin/bash"]
