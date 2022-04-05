CC = gcc
o = -o
w = website/
ou = our/


# make for the website code.
website: server client

# make for our code.
our: our_server our_client

server: $(w)server.c
		$(CC) $(w)server.c $(o) server

client: $(w)client.c
		$(CC) $(w)client.c $(o) client

our_server: $(ou)our_server.c
		$(CC) $(ou)our_server.c $(o) our_server

our_client: $(ou)our_client.c
		$(CC) $(ou)our_client.c $(o) our_client

# make clean
clean:
	rm -f *.o server client our_server our_client