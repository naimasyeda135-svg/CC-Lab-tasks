CC = gcc
CFLAGS = -I.
DEPS = even_oddmake.h
OBJS = even_oddmake.o even_oddfunc.o

all:
	gcc -o even_odd even_odd.c
	gcc -E even_odd.c > even_odd.i
	gcc -S -masm=intel even_odd.i
	as -o even_odd.o even_odd.s
	objdump -M intel -d even_odd.o > even_odd.dump
	gcc -c -o even_odd.o even_odd.c
	objdump -M intel -d even_odd.o > even_odd.dump