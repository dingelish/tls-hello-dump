LDFLAGS=-lpcap

# Change these according to your needs:
CFLAGS=-Wall -DLOG_ADDRESSES #-DLOG_PORTS -DLOG_SESSIONID -DLOG_COUNTER

all: tls-hello-dump

tls-hello-dump:
	$(CC) $(CFLAGS) tls-hello-dump.c -o tls-hello-dump $(LDFLAGS)

clean:
	rm -rf tls-hello-dump tls-hello-dump.o

.PHONY: clean
