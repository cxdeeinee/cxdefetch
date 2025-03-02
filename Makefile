PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install Cxdefetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p neofetch $(DESTDIR)$(PREFIX)/bin/cxdefetch
	@cp -p neofetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/cxdefetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/cxdefetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/cxdefetch.1*
