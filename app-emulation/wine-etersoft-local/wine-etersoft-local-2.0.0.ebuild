# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# : $

MY_R=eter8gentoo
MY_ARCH=i586
DESCRIPTION="WINE@Etersoft Local is a commercial product for running Win-applications"
HOMEPAGE=http://www.etersoft.ru/wine/local

BASE_URI=https://github.com/downloads/zaharchuktv/files
SRC_URI="$BASE_URI/wine-etersoft-local-2.0.0-eter8gentoo.i586.tar.bz2"
LICENSE=Commercial
SLOT="0"
KEYWORDS="-* x86 amd64"

RDEPEND="!app-emulation/wine"


src_unpack() {
unpack ${A}
}

src_install() {
cp -pR * "${D}"
cp -pR ${FILESDIR}/wine-etersoft.lic ${D}/etc/wine
}


