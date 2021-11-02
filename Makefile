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
	${CC} ${CFLAGS} main.o -L . -lclassrec -lm -o mains

maindrec: main.o recursived
	${CC} ${CFLAGS} main.o -L . -lclassrec -lm -o maindrec

maindloop: main.o loopd
	${CC} ${CFLAGS} main.o -L . -lclassloops -lm -o maindloop

libclassloops.so: NumClass.h ${OBJECTS_BASIC} ${OBJECTS_LOOPS}
	${CC} ${CFLAGS} -shared ${OBJECTS_LOOPS} ${OBJECTS_BASIC} -o ./libclassloops.so

libclassloops.a: NumClass.h  ${OBJECTS_BASIC} ${OBJECTS_LOOPS}
	${AR} -rcs libclassloops.a  ${OBJECTS_BASIC} ${OBJECTS_LOOPS}

libclassrec.so: NumClass.h ${OBJECTS_BASIC} ${OBJECTS_RECURSION}
	${CC} ${CFLAGS} -shared ${OBJECTS_BASIC} ${OBJECTS_RECURSION} -o ./libclassrec.so

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