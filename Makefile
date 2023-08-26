all:
	make -C src all
install:
	make -C src install
clean:
	make -C src clean
package:
	DEB_BUILD_OPTIONS=noddebs dpkg-buildpackage -b -tc -uc -us
