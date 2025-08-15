CC = gcc
CFLAGS = -I.
DEPS = sum.h
OBJS = sum.o sumfunc.o

all:
	gcc -o sum sum.c
	gcc -E sum.c > sum.i
	gcc -S -masm=intel sum.i
	as -o sum.o sum.s
	objdump -M intel -d sum.o > sum.dump
	gcc -c -o sum.o sum.c
	objdump -M intel -d sum.o > sum.dump