SRCS = $(wildcard *.ts)
JS = $(SRCS:%.ts=%.js)

.PHONY: all build clean

all: build
	cp -r *.html *.js /var/www/files/drone3d

build: $(JS)

%.js: %.ts
	tsc $< babylon.d.ts

clean:
	rm -rf *.js