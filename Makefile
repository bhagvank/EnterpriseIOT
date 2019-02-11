CFLAGS=-Wall -ggdb -I../../lib -I../../lib/cpp
LDFLAGS=-L../lib ../lib/libmosquittopp.so.1 ../../lib/libmosquitto.so.1

.PHONY: all clean

all : converter

converter : main.o converter.o
	${CXX} $^ -o $@ 

main.o : main.cpp
	${CXX} -c $^ -o $@ 

converter.o : converter.cpp
	${CXX} -c $^ -o $@ 

clean : 
	-rm -f *.o converter
