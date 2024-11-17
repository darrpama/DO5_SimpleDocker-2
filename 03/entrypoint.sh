#!/bin/bash

gcc -o comp_server server.c -lfcgi
spawn-fcgi -p 8080 ./comp_server
nginx -g "daemon off;"