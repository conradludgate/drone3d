SRCDIR = src
BUILDDIR = build

SRCS := $(wildcard $(SRCDIR)/*.ts)
DEFINES = $(wildcard $(SRCDIR)/*.d.ts)
SRCS := $(filter-out $(DEFINES), $(SRCS))
JS = $(SRCS:$(SRCDIR)/%.ts=$(BUILDDIR)/%.js)

.PHONY: all build clean test

all: build
	cp -r *.html build /var/www/files/drone3d

build: $(SRCS)
	tsc

# $(BUILDDIR)/%.js: $(SRCDIR)/%.ts $(DEFINES)
# 	tsc
	
clean:
	rm -rf build