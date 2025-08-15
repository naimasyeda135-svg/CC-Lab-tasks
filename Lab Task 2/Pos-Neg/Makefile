CC = gcc
CFLAGS = -I.
DEPS = posmake.h
OBJS = posmake.o posfunc.o

all:
	gcc -o pos pos.c
	gcc -E pos.c > pos.i
	gcc -S -masm=intel pos.i
	as -o pos.o pos.s
	objdump -M intel -d pos.o > pos.dump
	gcc -c -o pos.o pos.c
	objdump -M intel -d pos.o > posc.dump