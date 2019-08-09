CC = g++
CC_FLAGS = -Wall -O3

src = $(wildcard *.cc)
obj = $(src:.cc=.o)

LDFLAGS = -lncurses -pthread

typing_game: $(obj)
	$(CC) -o $@ $^ $(LDFLAGS)

.PHONY: clean
clean:
	rm $(obj)

