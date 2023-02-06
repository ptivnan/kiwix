ls -l /kiwix
ls -l /kiwix-library
ls -l /startup
kiwix-manage /kiwix-library/library.xml add *.zim
kiwix-serve -M -v --library /kiwix-library/library.xml --port 8080