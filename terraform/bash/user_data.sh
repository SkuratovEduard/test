#!/bin/bash
echo "Test" > index.html
nohup busybox httpd -f -p ${var.server_port} &
