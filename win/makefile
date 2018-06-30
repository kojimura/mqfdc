# makefile for Windows

CC = cl.exe
DEST = c:/home/bin/ 
SRC = mqfdc.c
PROGRAM = mqfdc.exe

$(PROGRAM) : $(SRC)
	$(CC) -MD $(SRC) -Fe$(PROGRAM)

install:
	cp $(PROGRAM) $(DEST) 

clean:
	rm -f *.exe *.obj *~ .*~ *.swp

