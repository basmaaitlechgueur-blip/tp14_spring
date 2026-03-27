#!/bin/bash
tar -czf logs_$(date +%Y%m%d).tar.gz logs/
echo "Archive créée : logs_$(date +%Y%m%d).tar.gz"