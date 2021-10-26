# Simplify MQ FDC file in one line
# usage: awk -f mqfdc.awk fdcfile
# e.g.:  awk -f mqfdc.awk AMQ1234.FDC

#BEGIN { print "mqfdc.awk *excerpt MQ FDC file*" }

/Date\/Time/ { str =  $4 " " $5 " " $6 " " $7 " " $8 }
/Probe Id/ { str = str " " $5 }
/Component/ { str = str " " $4 }
/Program Name/ { str = str  " " $5 }
/Major Errorcode/ { print FILENAME " " str  }
