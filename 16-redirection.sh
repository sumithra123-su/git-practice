#!/bin/bash
LOGS_FLODER="var\log\shell_script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FLODER/$SCRIPT_NAME-$TIMESTAMP.log"
mkdir -p $LOGS_FLODER


USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m" 
Y="\e[33"
CHECK_ROOT()
{
  if [ $USERID -ne 0 ]
    then
     echo -e "$R please run this script with root priveleges $N"  &>>$LOG_FILE
     exit 1
   fi
}
VALIDATE()
{
    if [ $1 -ne 0 ]
     then
        echo -e "$2  is..$R FAILED $N" &>>$LOG_FILE
        exit 1
     else
         echo  -e "$2  is.. $G SUCCESS $N" &>>$LOG_FILE
    fi
}
USAGE()
{
    echo -e "$R USAGE:: $N sudo sh 16.redirection.sh package1 package2 ...."
    exit 1
}

CHECK_ROOT

if [ $# -eq 0 ]
 then
    USAGE
fi
 
for package in $@ # $@ refers all arguments passed to it
 do
  dnf list install $package   &>>$LOG_FILE

   if [ $? -ne 0 ]
      then
        echo "$package nis not installed going to install it" &>>$LOG_FILE
        dnf lnstall $package -y &>>$LOG_FILE
        VALIDATE $? "installing $package"
      else
        echo -e "$package is already installerd,$Y nothing to do it $N" &>>$LOG_FILE   
     fi
done   
