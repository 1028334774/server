CC = gcc
OBJSERVER = ftp_server.o
OBJCLIENT = client.o
all:ftp_server.out client.out

ftp_server.out:${OBJSERVER}
	${CC} ${OBJSERVER} -o ftp_server.out
${OBJSERVER}:ftp_server.c commons.h
	${CC} -c ftp_server.c
client.out:${OBJCLIENT}
	${CC} ${OBJCLIENT} -o client.out
${OBJCLIENT}:client.c commons.h
	${CC} -c client.c
clean:
	rm -f *.o
	rm -f *.out
