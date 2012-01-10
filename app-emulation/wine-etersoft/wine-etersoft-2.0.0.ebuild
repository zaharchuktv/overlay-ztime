# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# : $

MY_R=eter2gentoo
MY_ARCH=i586
DESCRIPTION="WINE@Etersoft - Environment for running Windows applications (main part)"
HOMEPAGE=http://winehq.org.ru/

BASE_URI=ftp://updates.etersoft.ru/pub/Etersoft/WINE@Etersoft/2.0.0/WINE/Gentoo/2009
SRC_URI="$BASE_URI/extra/wine-etersoft-twain-2.0.0-eter2gentoo.i586.tar.bz2 $BASE_URI/extra/wine-etersoft-gl-2.0.0-eter2gentoo.i586.tar.bz2 $BASE_URI/wine-etersoft-2.0.0-eter2gentoo.i586.tar.bz2 $BASE_URI/extra/libwine-etersoft-devel-2.0.0-eter2gentoo.i586.tar.bz2 "
LICENSE=Commercial
SLOT="0"
KEYWORDS="-* x86 amd64"

src_unpack() {
unpack ${A}
}

src_install() {
cp -pR * "${D}"
}
