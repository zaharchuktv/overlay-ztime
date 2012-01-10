# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# : $

MY_R=eter1gentoo
MY_ARCH=noarch
DESCRIPTION="Fonts to replace commonly used Microsoft Windows Fonts"
HOMEPAGE=http://koji.fedoraproject.org/koji/buildinfo?buildID=45785

BASE_URI=ftp://updates.etersoft.ru/pub/Etersoft/WINE@Etersoft/2.0.0/WINE/Gentoo/2009
SRC_URI="$BASE_URI/fonts-ttf-liberation-1.04-eter1gentoo.noarch.tar.bz2 "
LICENSE=Liberation
SLOT="0"
KEYWORDS="-* x86 amd64"

src_unpack() {
unpack ${A}
}

src_install() {
cp -pR * "${D}"
}
