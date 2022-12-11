TARGETS := $(patsubst %.c,%.t,$(wildcard *.c))
CFLAGS := -std=gnu11 -Wall -Werror -Wno-error=unused-function -Wfatal-errors -D_GNU_SOURCE -flto -Os -I ../include/

all: $(TARGETS)
	prove --verbose .

%.t: %.c ../include/cclasses.h ../include/sl.h
	$(CC) $(CFLAGS) $< -o $@

