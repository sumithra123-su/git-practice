#!/bin/bash
LOGS_FLODER="var\log\shell_script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%y-%m-%d-%h-%m-%s)
LOG_FILE="$LOGS_FLODER/$SCRIPT_NAME-$TIMESTAMP.log"
mkdir -p $LOGS_FLODER


USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m" 
CHECK_ROOT()
{
  if [ $USERID -ne 0 ]
    then
     echo "please run this script with root priveleges"
     exit 1
   fi
}
VALIDATE()
{
    if [ $1 -ne 0 ]
     then
        echo -e "$2  is..$R FAILED $N"
     else
         echo  -e "$2  is.. $G SUCCESS $N"
    fi
}

CHECK_ROOT