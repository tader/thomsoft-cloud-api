DESTDIR =

TARGETDIR = $(DESTDIR)/etc/thomsoft-cloud/api
DOCPATH   = $(DESTDIR)/usr/share/doc/thomsoft-cloud-api

TOPFILES  = README.txt 

install-api:
	install -d -m 755 $(TARGETDIR)/
	install -m 644 src/httpd.conf $(TARGETDIR)/
	install -m 644 src/thomsoft-cloud-api $(DESTDIR)/etc/init.d/

	install -d -m 755 $(DOCPATH)/
	install -m 644 $(TOPFILES) $(DOCPATH)/

