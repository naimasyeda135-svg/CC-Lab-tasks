CC = gcc
CFLAGS = -I.
DEPS = whilemake.h
OBJS = whilemake.o whilefunc.o

all:
	gcc -o while while.c
	gcc -E while.c > while.i
	gcc -S -masm=intel while.i
	as -o while.o while.s
	objdump -M intel -d while.o > while.dump
	gcc -c -o while.o while.c
	objdump -M intel -d while.o > whilec.dump