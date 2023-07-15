
.PHONY: all clean install
INSTALL_DIR=/opt/xdtool

all:
	echo "######################################"
	echo "all"
	echo "######################################"
	tar -zcvf vim.tar.gz .vim

clean:
	echo "######################################"
	echo "clean"
	echo "######################################"

install:
	echo "######################################"
	echo "install"
	echo "######################################"
	echo "${DESTDIR}"
	echo "${prefix}"
	echo "${libdir}"
	install -d ${DESTDIR}${prefix}/usr/bin/
	install -d ${DESTDIR}${prefix}${INSTALL_DIR}/
	install -m644 config/vimrc ${DESTDIR}${prefix}${INSTALL_DIR}/
	install -m755 shell/install.sh ${DESTDIR}${prefix}${INSTALL_DIR}/
	install -m755 vim.tar.gz ${DESTDIR}${prefix}${INSTALL_DIR}/
	install -m755 shell/xd ${DESTDIR}${prefix}/usr/bin/

