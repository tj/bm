
PREFIX=/usr/local

install:
	cp -f bm $(PREFIX)/bin/bm
	if [ ! -d "/usr/share/bm" ]; then mkdir -p "/usr/share/bm"; fi
	cp -f "black-Linen.png" "/usr/share/bm/black-Linen.png"
	cp -f Makefile "/usr/share/bm/Makefile"

uninstall:
	rm -f $(PREFIX)/bin/bm
	rm -f "/usr/share/bm/black-Linen.png"
	rm -f "/usr/share/bm/Makefile"
	rmdir "/usr/share/bm"

.PHONY: install uninstall
