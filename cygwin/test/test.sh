#!/bin/bash

# test script
# run from cygwin bash 
# . ./test.sh

PROG1=../amqfdc.sh
PROG2=../mqfdc.sh
PROG3=../mqfdc_win.sh

IN1=/cygdrive/c/home/data/unix/AMQ3196.0.FDC
IN2=/cygdrive/c/home/data/unix/

OUT1=test1.out
OUT2=test2.out
OUT3=test3.out

echo "----- Unit Test ${PROG1} : one file : calling C -----" > ${OUT1}
date >> ${OUT1} 
. ${PROG1} ${IN2} >> ${OUT1}

echo "----- Combined Test ${PROG2} : all file : using awk -----" > ${OUT2}
date >> ${OUT2} 
. ${PROG2} ${IN2} >> ${OUT2}

echo "----- Combined Test ${PROG3} : all windows format file : using awk -----" > ${OUT3}
date >> ${OUT3} 
. ${PROG3} ${IN2} >> ${OUT3}
