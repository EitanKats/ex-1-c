CC = gcc
CFLAGS = -Wall -c -Werror


all: loops recursives recursived loopd mains maindloop maindrec


maindrec:

maindloop:

mains:

loopd: NumClass.h advancedClassificationLoop.c
	${CC} ${CFLAGS} advancedClassificationLoop.c -o libclassloops.so

recursived:

recursives:

loops:

clean:
	rm -f *.a *.o