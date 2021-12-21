The bash skript "user_data.sh" writes text to the index.html file, which is served on port 8080 by a web server running using busybox.
The busybox command between nohap and & to keep the web server running in the background even after the bash script finished.

