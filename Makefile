SRCS = $(wildcard *.ts)
JS = $(SRCS:%.ts=%.js)

.PHONY: all build clean

all: build

build: $(JS)

%.js: %.ts
	tsc $< babylon.d.ts

clean:
	rm -rf *.js