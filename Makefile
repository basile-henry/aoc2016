CFLAGS = -g -O3 -std=c99 \
	-pedantic -Wall -Wextra -Wconversion -Werror

day04: src/day04.c
	$(CC) $(CFLAGS) src/day04.c -o day04

day06: src/day06.c
	$(CC) $(CFLAGS) src/day06.c -o day06

day07: src/day07.c
	$(CC) $(CFLAGS) src/day07.c -o day07

day08: src/day08.c
	$(CC) $(CFLAGS) src/day08.c -o day08

test: src/test.c
	$(CC) $(CFLAGS) src/test.c -o test

.PHONY: all
all: test day04 day06 day07 day08

.PHONY: clean
clean:
	rm -f ./test ./day04 ./day06 ./day07 ./day08