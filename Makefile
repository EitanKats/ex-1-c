CC = gcc
CFLAGS = -Wall -Werror
AR = ar

all: loops recursives recursived loopd mains maindloop maindrec

maindrec: main.c recursived
	${CC} ${CFLAGS} main.c -L . -lclassrec -o maindrec

maindloop: main.c loopd
	${CC} ${CFLAGS} main.c -L . -lclassloops -o maindloop

mains:

loopd: basicClassification.o advancedClassificationLoop.o
	${CC} ${CFLAGS} -shared advancedClassificationLoop.o basicClassification.o -o libclassloops.so

recursived: NumClass.h basicClassification.c advancedClassificationRecursion.c
	${CC} ${CFLAGS} -shared basicClassification.o advancedClassificationRecursion.o -o libclassrec.so

recursives: NumClass.h basicClassification.c advancedClassificationRecursion.c
	${AR} -rcs libclassrec.a basicClassification.o advancedClassificationRecursion.o


loops: NumClass.h  basicClassification.o advancedClassificationLoop.o
	${AR} -rcs libclassloops.a  advancedClassificationLoop.o basicClassification.o

main.o: main.c
	${CC} ${CFLAGS} -c main.c

basicClassification.o: basicClassification.c NumClass.h
	${CC} ${CFLAGS} -c basicClassification.c

advancedClassificationLoop.o: advancedClassificationLoop.c NumClass.h
	${CC} ${CFLAGS} -c advancedClassificationLoop.c

advancedClassificationRecursion.o: advancedClassificationRecursion.c NumClass.h
	${CC} ${CFLAGS} -c advancedClassificationRecursion.c

clean:
	rm -f *.a *.o *.so