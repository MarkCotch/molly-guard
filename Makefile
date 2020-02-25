include	/etc/os-release
CC=gcc
CFLAGS=-I. -lm

molly-guard:
	echo "$(ID_LIKE)"

clean:
	rm -vf *.o a.* *.so

install:
	install -v -o root -g root -m 755 molly-guard /usr/local/bin/molly-guard
	@test -f /usr/local/bin/molly-test || ln -sv molly-guard /usr/local/bin/molly-test
	@test -f /usr/local/bin/reboot     || ln -sv molly-guard /usr/local/bin/reboot
	@test -f /usr/local/bin/shutdown   || ln -sv molly-guard /usr/local/bin/shutdown
	@test -f /usr/local/bin/halt       || ln -sv molly-guard /usr/local/bin/halt
	@test -f /usr/local/bin/poweroff   || ln -sv molly-guard /usr/local/bin/poweroff

uninstall: 
	rm -vf /usr/local/bin/{molly-guard,molly-test,shutdown,halt,poweroff}



