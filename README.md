# mqfdc
This is a script to summarise MQ FDC files.

# Summarize one FDC file
mqfdc.c : 
mqfdc < fdcfile 
e.g.
$ ./mqfdc < /var/mqm/errors/AMQ17998.0.FDC 
| Date/Time         :- 土 9月 25 2021 23:52:16 JST                          | 
| Probe Id          :- XC338001                                               | 
| Component         :- xehAsySignalHandler                                    | 
| Program Name      :- amqzxma0                                               | 
| Major Errorcode   :- xecE_W_UNEXPECTED_ASYNC_SIGNAL                         | 
| Date/Time         :- 土 9月 25 2021 23:52:20 JST                          | 
| Probe Id          :- ZX005022                                               | 
| Component         :- zxcProcessChildren                                     | 
| Program Name      :- amqzxma0                                               | 
| Major Errorcode   :- lrcW_S_FAST_PATH_APP_DEAD                              | 

# Summarize all FDC files in specified directory calling mqfdc
amqfdc.sh
. ./amqfdc.sh /var/mqm/errors/
. ./amqfdc.sh "C:\Program Files\IBM\WebSphere MQ\errors\"

# Summarize all FDC files in specified directory using awk
mqfdc.sh
. ./mqfdc.sh /var/mqm/errors/
. ./mqfdc.sh "C:\Program Files\IBM\WebSphere MQ\errors\"

# Summarize all Windows format FDC files generated in specified directory using awk
mqfdc_win.sh
. ./mqfdc_win.sh "C:\Program Files\IBM\WebSphere MQ\errors\"

# Summarize all FDC files in specified directory using batch calling mqfdc.c
mqfdc_win.bat "C:\Program Files\IBM\WebSphere MQ\errors\"

# Summarize all FDC files in specified directory using powershell
mqfdc.ps1 "C:\Program Files\IBM\WebSphere MQ\errors\"

# Summarize  FDC file in one line
awk -f mqfdc1.awk xxx.FDC
mqfdc1.sh /var/mqm/errors 


