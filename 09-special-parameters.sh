#!/bin/bash

echo "all the variables passed to the script: $@"
echo "the number of variables passed to the shell script: $#"
echo "script name: $0"
echo "current workind directory: $PWD"
echo "home directory og current now: $HOME"
echo "PID of current shell script:$$"
sleep 100 &
echo "PID of last backround running process: $!"
echo "all arguments passed to the shell script seperated by the space: $*"

