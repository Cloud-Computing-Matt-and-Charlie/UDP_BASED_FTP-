#g++ -std=c++11 server.cpp packet_dispenser.cpp UDP.cpp -o server -g -pthread
#./server "127.0.0.1" "6234" "6239" "test.txt"

#g++ -std=c++11 client.cpp UDP.cpp -o client -g -pthread
#./client "127.0.0.1" "6239" "6234" "test.txt"

#
# This is an example Makefile for a countwords program.  This
# program uses both the scanner module and a counter module.
# Typing 'make' or 'make count' will create the executable file.
#

# define some Makefile variables for the compiler and compiler flags
# to use Makefile variables later in the Makefile: $()
#
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
#
# for C++ define  CC = g++
#CC = g++
#CFLAGS  = -g -std=c++11 -pthreads

CXX=clang++
CXXFLAGS=-g -std=c++11 -Wall -pedantic -v
LDFLAGS+=-pthread
BIN=prog

# typing 'make' will invoke the first target entry in the file 
# (in this case the default target entry)
# you can name this target entry anything, but "default" or "all"
# are the most commonly used names by convention
#
default: all

all: 
	g++ -std=c++11 server.cpp packet_dispenser.cpp UDP.cpp -o server -g -pthread
	g++ -std=c++11 client.cpp UDP.cpp -o client -g -pthread



server: server
	g++ -std=c++11 server.cpp packet_dispenser.cpp UDP.cpp -o server -g -pthread
client: client
	g++ -std=c++11 client.cpp UDP.cpp -o client -g -pthread
run_server: run_server
	./server 10.0.3.139 10000 10001 "test_file_in.txt"
run_client: run_client
	./client 10.0.0.140 10001 10000 output.txt
run_server2: run_server2
	./server 192.168.86.181 6234 10000 "test_file.txt"
run_client2: run_client2
	./client 192.168.86.181 10000 6234 output.txt
clean: 
	$(RM) server
	$(RM) client
