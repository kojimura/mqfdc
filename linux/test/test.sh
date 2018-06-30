#!/bin/bash

# Test shell for mqfdc
# instruction
# run this shell script
# . ./test.sh

PROG1="../mqfdc"
PROG2=". ../amqfdc.sh"

IN1=${HOME}/data/AMQ3196.0.FDC
IN2=/mnt/nas/sampledata/MQ_STSC/MQ_STSC/errors/mqmerror/

OUT1=test1.out
OUT2=test2.out

# unit test for one file
date > ${OUT1}; ${PROG1} < ${IN1} >> ${OUT1}

# combine test for all files in specified path
date > ${OUT2}; ${PROG2} ${IN2} >> ${OUT2}

