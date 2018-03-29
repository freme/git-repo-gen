SRCS = $(shell find . -name '*.cpp')
PROGS = $(patsubst %.cpp,%,$(SRCS))
CFLAGS = -I ./runtime -O -w

all: $(PROGS)

%: %.cpp
	${CC} $(CFLAGS) -o ./output/$(shell basename $@) $<

.PHONY: clean
clean:
	rm -rf ./output/*.o

