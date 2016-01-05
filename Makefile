
PREFIX=/usr/local

install:
	cp -f bm $(PREFIX)/bin/bm

uninstall:
	rm -f $(PREFIX)/bin/bm

.PHONY: install uninstall
