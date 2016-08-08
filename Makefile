make: test.c
	gcc -g -finstrument-functions test.c

run: a.out
	./a.out

# usage : make get-line ADDR=1004011e5, 1004011e5 is the address in trace.txt ourput file.
get-line: a.out
	addr2line -e a.out $(ADDR)

# usage : make get-sym ADDR=1004011e5, 1004011e5 is the address in trace.txt ourput file.
get-sym: a.out
	nm a.out | grep $(ADDR)
