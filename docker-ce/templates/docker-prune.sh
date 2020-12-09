#!/bin/bash

if [ `df -hl /var/lib/docker | grep -v Use% | awk '{print $5}' | cut -f1 -d '%'` -gt {{ docker_percentage_disksize_threshold }} ]; then docker system prune -a -f; fi
