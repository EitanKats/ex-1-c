CC = gcc
CFLAGS = -Wall -Werror
AR = ar

all: loops recursives recursived loopd mains maindloop maindrec

maindrec:

maindloop: main.c loopd
	${CC} ${CFLAGS} main.c -L . -lclassloops -o maindloop

mains:

loopd: NumClass.h  basicClassification.c advancedClassificationLoop.c
	${CC} ${CFLAGS} -shared advancedClassificationLoop.c basicClassification.c -o libclassloops.so

recursived:

recursives:


loops: NumClass.h  basicClassification.o advancedClassificationLoop.o
	${AR} -rcs  libclassloops.a  advancedClassificationLoop.o basicClassification.o

main.o: main.c
	${CC} ${CFLAGS} -c main.c

basicClassification.o: basicClassification.c
	${CC} ${CFLAGS} -c basicClassification.c

advancedClassificationLoop.o: advancedClassificationLoop.c
	${CC} ${CFLAGS} -c advancedClassificationLoop.c

clean:
	rm -f *.a *.o *.so