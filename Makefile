CC = gcc
o = -o

website: server client

our: our_server our_client

server: server.c
		$(CC) server.c $(o) server

client: client.c
		$(CC) client.c $(o) client

our_server: our_server.c
		$(CC) our_server.c $(o) our_server

our_client: our_client.c
		$(CC) our_client.c $(o) our_client

clean:
	rm -f *.o server client our_server our_client