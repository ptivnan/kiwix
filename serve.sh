ls -l /kiwix
ls -l /startup
kiwix-manage /kiwix/library.xml add *.zim
kiwix-serve -M -v --library /kiwix/library.xml --port 8080