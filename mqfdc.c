// Simplify MQ FDC file 
// usage: mqfdc < fdcfile

#define BUF_LEN 1024
#include <stdio.h>
#include <string.h>

int main( int argc, char **argv )
{
 char buf[BUF_LEN];

 while(fgets(buf, BUF_LEN - 1, stdin)){
   if(!strncmp(buf,"| Date/Time",11)|!strncmp(buf,"| Probe Id",10)|!strncmp(buf,"| Component",11)|!strncmp(buf,"| Program Name",14)|!strncmp(buf,"| Major Errorcode",17)|!strncmp(buf,"| Comment",10)){
     printf("%s",buf);
   }
 }
}

