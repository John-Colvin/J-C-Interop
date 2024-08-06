CFLAGS = -Werror -g -pedantic

.PHONY: runJustC
runJustC: justC
	./justC

justC: test.o lib.o
	gcc $(CFLAGS) -o justC test.o lib.o

test.o: test.c
	gcc $(CFLAGS) -c test.c

lib.o: lib.c
	gcc $(CFLAGS) -c lib.c

.PHONY: clean
clean:
	rm -f justC test.o lib.o
