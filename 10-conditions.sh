#!/bin/bash
NUMBER=$1

if [ $NUMBER -gt 27 ] # gt,lt,eq,-ne,-ge,-le
then
echo "the given number: $NUMBER is greater than 27"
else
echo "the given number: $NUMBER is less than 27"
fi