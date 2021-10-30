CC = gcc
CFLAGS = -Wall -Werror


all: loops recursives recursived loopd mains maindloop maindrec


maindrec:

maindloop:

mains:

loopd: NumClass.h advancedClassificationLoop.c
	${CC} ${CFLAGS} -shared advancedClassificationLoop.c -o libclassloops.so

recursived:

recursives:

loops:

clean:
	rm -f *.a *.o *.so