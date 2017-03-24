#Sample Makefile. You can make changes to this file according to your need
# The executable must be named proxy

CC = gcc
CFLAGS = -Wall -g
LDFLAGS = -lpthread

PROXY_THREAD = proxy_thread.o csapp.o
PROXY_PROCESS = proxy_process.o csapp.o

all: proxy_thread proxy_process

proxy_thread: $(PROXY_THREAD)

proxy_process: $(PROXY_PROCESS)

csapp.o: csapp.c
	$(CC) $(CFLAGS) -c csapp.c

proxy_process.o: proxy_process.c
	$(CC) $(CFLAGS) -c proxy_process.c

proxy_thread.o: proxy_thread.c
	$(CC) $(CFLAGS) -c proxy_thread.c

clean:
	rm -f *~ *.o proxy_process proxy_thread
