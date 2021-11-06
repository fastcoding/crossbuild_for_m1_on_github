FLAGS=-target arm64-apple-macos11

SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

CFLAGS+=$(FLAGS)

all: test

test: $(OBJS)
	clang $(FLAGS) -o $@ $^ $(LDFLAGS)

clean:
	rm -rf *.o

.PHONY: clean

