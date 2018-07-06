#
CC = gcc
CFLAGS = -O4 -Wall -I/usr/loca/include
DEST = /usr/local/bin
LDFLAGS = -L/usr/local/lib
OBJ = mqfdc.o
SRC = mqfdc.c
PROGRAM = mqfdc

all: $(PROGRAM)

$(PROGRAM): $(OBJ)
	$(CC) $(OBJ) -o $(PROGRAM)

$(OBJ): $(SRC)

clean:
	rm -f *.o *~ $(PROGRAM)

install: $(PROGRAM)
	install -s $(PROGRAM) $(DEST)
	cp *.sh $(DEST)/



