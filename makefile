# makefile for Windows

CC = cl.exe
LINK = link.exe
DEST = bin
PROGRAM = mqfdc.exe

mqercmp.exe : mqfdc.c
	$(CC) -MD mqfdc.c -Fe$(PROGRAM)

