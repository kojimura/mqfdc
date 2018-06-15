# makefile for Windows

CC = cl.exe

LINK = link.exe

mqercmp.exe : mqfdc.c
	$(CC) -MD mqfdc.c -Femqfdc.exe
