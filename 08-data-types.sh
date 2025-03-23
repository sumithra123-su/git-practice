#!/bin/bash

NUMBER1=$1
NUMBER2=$2
COUNT1=$3

SUM=$(($NUMBER1+$NUMBER2))
PRODUCT=$(($NUMBER1*$NUMBER2))
AVERAGE=$(($NUMBER1+$NUMBER2)/ $COUNT1)

echo "total number of sum $NUMBER1 and $NUMBER2 = $SUM"
echo "total number of product $NUMBER1 and $NUMBER2 = $PRODUCT"
echo "total number of average $NUMBER1 and $NUMBER2 = $AVERAGE"