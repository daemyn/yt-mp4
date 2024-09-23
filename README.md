# YouTube to MP4

YouTube to MP4 converter using [yt-dlp](https://github.com/yt-dlp/yt-dlp).

## How to use

First clone the project and build the docker image

```
docker build .
```

Change the local volume directory: currently `~/Downloads` inside `docker-compose.yml`

Run the command as follows:

```
docker-compose run yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 {youtube_video_url} -o /downloads/{filename.mp4}
```

This command will download the best quality available.

For more options check [yt-dlp documentation](https://github.com/yt-dlp/yt-dlp).
