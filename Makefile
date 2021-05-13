CFLAGS := -std=gnu99 -Wall -Werror -Wno-error=unused-function -Wfatal-errors -D_GNU_SOURCE -flto -Os

all: test

test:
	make -C t/

.PHONY: test
