.POSIX:

OS = $(shell uname -s)
ifndef PREFIX
  PREFIX = $(HOME)/.local
endif

install:
	mkdir -p $(PREFIX)/bin
	cp -f wppfzf $(PREFIX)/bin/; \
	chmod 755 $(PREFIX)/bin/wppfzf; \

uninstall:
	rm -f $(PREFIX)/bin/wppfzf; \

.PHONY: install uninstall
