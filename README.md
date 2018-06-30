# mqfdc
This is a script to summarise MQ FDC files.

# Summarize one FDC file
mqfdc.c : 
mqfdc < fdcfile 

# Summarize all FDC files in specified directory calling mqfdc
amqfdc.sh
. ./amqfdc.sh "C:\Program Files\IBM\WebSphere MQ\errors\"

# Summarize all FDC files in specified directory using awk
mqfdc.sh
. ./mqfdc.sh "C:\Program Files\IBM\WebSphere MQ\errors\"

# Summarize all Windows format FDC files generated in specified directory using awk
mqfdc_win.sh
. ./mqfdc_win.sh "C:\Program Files\IBM\WebSphere MQ\errors\"

# Summarize all FDC files in specified directory using batch calling mqfdc.c
mqfdc_win.bat "C:\Program Files\IBM\WebSphere MQ\errors\"

# Summarize all FDC files in specified directory using powershell
mqfdc.ps1 "C:\Program Files\IBM\WebSphere MQ\errors\"

