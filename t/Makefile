CFLAGS := -Wall -Werror -std=gnu11 -I../include/
TARGETS := $(shell ls * | grep -v Makefile | grep -v '.t' | sed -r 's/(.*)/\1.t/g')

all: $(TARGETS)

%.c.t: %.c
	gcc $< $(CFLAGS) -o $@
