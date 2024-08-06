CFLAGS = -Werror -g -pedantic

# set this as appropriate
JAI = ~/Downloads/jai/bin/jai-macos

.PHONY: runJustC
runJustC: justC
	./justC

justC: test.o lib.o
	gcc $(CFLAGS) -o justC test.o lib.o

test.o: test.c
	gcc $(CFLAGS) -c test.c

lib.o: lib.c
	gcc $(CFLAGS) -c lib.c

.PHONY: runjaiAndC
runJaiAndC: jaiAndC
	./jaiAndC

jaiAndC: lib-jai.a test.o
	gcc $(CFLAGS) -o jaiAndC test.o lib-jai.a

lib-jai.a: lib.jai build.jai test.jai
	$(JAI) build.jai

test.jai: generate.jai test.h
	$(JAI) generate.jai

.PHONY: clean
clean:
	rm -f justC test.o lib.o jaiAndC lib-jai.a test.jai
