CC = gcc
CFLAGS = -I.
DEPS = checkmake.h
OBJS = checkmake.o checkfunc.o

all:
	gcc -o check check.c
	gcc -E check.c > check.i
	gcc -S -masm=intel check.i
	as -o check.o check.s
	objdump -M intel -d check.o > check.dump
	gcc -c -o check.o check.c
	objdump -M intel -d check.o > checkc.dump