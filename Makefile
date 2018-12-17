SRCS := $(wildcard *.ts)
DEFINES = $(wildcard *.d.ts)
SRCS := $(filter-out $(DEFINES), $(SRCS))
JS = $(SRCS:%.ts=%.js)

.PHONY: all build clean test

all: build
	cp -r *.html *.js /var/www/files/drone3d

build: $(JS)

%.js: %.ts $(DEFINES)
	tsc $^
	
clean:
	rm -rf *.js