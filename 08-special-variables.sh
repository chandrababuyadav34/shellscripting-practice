#!/bin/bash

echo "All variables passed to the script : $@"
echo "Number of variables: $#"
echo "Name of the directory: $0"
echo "Current running directory: $PWD"
echo "User running the script: $USER"
echo "Home directory of the script: $HOME"
echo "PID of the script: $$"
sleep 10 &
echo "PID of last command running in background: $!"
