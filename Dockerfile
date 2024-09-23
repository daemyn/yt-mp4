# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Install yt-dlp and ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    pip install yt-dlp && \
    apt-get clean

# Set the working directory
WORKDIR /app

# Define entrypoint to use yt-dlp
ENTRYPOINT ["yt-dlp"]
