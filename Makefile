
PREFIX=/usr/local

install:
	cp -f bin/bm $(PREFIX)/bin/bm

uninstall:
	rm -f $(PREFIX)/bin/bm

.PHONY: install uninstall