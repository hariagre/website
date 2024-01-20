#!/bin/bash

if [ -x "$(command -v apache2)" ]; then
    echo "Apache is Installed on this System" > /home/ubuntu/config-management/status.txt
else
    echo "Apache is not installed on this System" > /home/ubuntu/config-management/status.txt
fi
