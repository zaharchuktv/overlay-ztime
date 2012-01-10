# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# : $

MY_R=eter4gentoo
MY_ARCH=noarch
DESCRIPTION="Unicode True Type fonts from MS"
HOMEPAGE=http://telia.dl.sourceforge.net/sourceforge/corefonts

BASE_URI=ftp://updates.etersoft.ru/pub/Etersoft/WINE@Etersoft/2.0.0/fonts/Gentoo/2009
SRC_URI="$BASE_URI/fonts-ttf-ms-1.0-eter4gentoo.noarch.tar.bz2 "
LICENSE=""
SLOT="0"
KEYWORDS="-* x86 amd64"

src_unpack() {
unpack ${A}
}

src_install() {
cp -pR * "${D}"
}
