#Makefile for lab00, Derek Bang, CS32, S18
#minimal Hello World! program for testing Makefiles

CXX=clang++
# CXX=g++

helloWorld: helloWorld.o
	${CXX} helloWorld.o -o helloWorld
helloWorld.o: helloWorld.cpp
	${CXX} -c helloWorld.cpp
clean:
	/bin/rm -f *.o helloWorld lab00Test
lab00Test: lab00Test.o tddFuncs.o arrayFuncs.o
	${CXX} lab00Test.o tddFuncs.o arrayFuncs.o -o lab00Test
