CC = gcc
CFLAGS = -Wall -Werror
AR = ar
MATH = -lm
OBJECTS_BASIC = basicClassification.o
OBJECTS_LOOPS = advancedClassificationLoop.o
OBJECTS_RECURSION = advancedClassificationRecursion.o

all: loops recursives recursived loopd mains maindloop maindrec

loopd: libclassloops.so
loops: libclassloops.a
recursived: libclassrec.so
recursives: libclassrec.a

mains: main.o recursives
	${CC} ${CFLAGS} main.c -L ./ -lclassrec -lm -o maindrec

maindrec: main.o libclassrec.a
	${CC} ${CFLAGS} main.c -L ./ -lclassrec -lm -o maindrec

maindloop: main.o loopd
	${CC} ${CFLAGS} main.c -L ./ -lclassloops -lm -o maindloop

libclassloops.so: NumClass.h ${OBJECTS_BASIC} ${OBJECTS_LOOPS}
	${CC} ${CFLAGS} -shared ${OBJECTS_LOOPS} ${OBJECTS_BASIC}

libclassloops.a: NumClass.h  ${OBJECTS_BASIC} ${OBJECTS_LOOPS}
	${AR} -rcs libclassloops.a  ${OBJECTS_BASIC} ${OBJECTS_LOOPS}

libclassrec.so: NumClass.h ${OBJECTS_BASIC} ${OBJECTS_RECURSION}
	${CC} ${CFLAGS} -shared ${OBJECTS_BASIC} ${OBJECTS_RECURSION}

libclassrec.a: NumClass.h ${OBJECTS_BASIC} ${OBJECTS_RECURSION}
	${AR} -rcs libclassrec.a ${OBJECTS_BASIC} ${OBJECTS_RECURSION}


main.o: main.c
	${CC} ${CFLAGS} -c main.c

basicClassification.o: basicClassification.c
	${CC} ${CFLAGS} -c basicClassification.c

advancedClassificationLoop.o: advancedClassificationLoop.c
	${CC} ${CFLAGS} -c advancedClassificationLoop.c

advancedClassificationRecursion.o: advancedClassificationRecursion.c
	${CC} ${CFLAGS} -c advancedClassificationRecursion.c


clean:
	rm -f *.a *.o *.so  maindrec maindloop mains