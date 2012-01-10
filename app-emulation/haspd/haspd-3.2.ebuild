# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# : $

MY_R=eter10gentoo
MY_ARCH=i586
DESCRIPTION="HASP drivers and license managers"
HOMEPAGE=http://www.etersoft.ru

BASE_URI=ftp://updates.etersoft.ru/pub/Etersoft/HASP/3.2/Gentoo/2009
SRC_URI="$BASE_URI/haspd-modules-3.2-eter10gentoo.i586.tar.bz2 $BASE_URI/haspd-3.2-eter10gentoo.i586.tar.bz2 "
LICENSE=Proprietary
SLOT="0"
KEYWORDS="-* x86 amd64"

src_unpack() {
unpack ${A}
}

src_install() {
cp -pR * "${D}"
}
