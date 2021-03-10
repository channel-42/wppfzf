
.POSIX:

OS = $(shell uname -s)
ifndef PREFIX
  PREFIX = /usr/local
endif
BINPREFIX ?= $(PREFIX)/bin

install:
	mkdir -p $(DESTDIR)$(BINPREFIX)
	cp -f wppfzf $(DESTDIR)$(BINPREFIX)
	chmod +x $(DESTDIR)$(BINPREFIX)/wppfzf

uninstall:
	rm -f $(DESTDIR)$(BINPREFIX)/wppfzf

.PHONY: install uninstall
