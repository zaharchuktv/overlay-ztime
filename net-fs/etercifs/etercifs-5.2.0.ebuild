# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# : $

MY_R=eter1gentoo
MY_ARCH=noarch
DESCRIPTION="Advanced Common Internet File System for Linux with Etersoft extension"
HOMEPAGE=http://wiki.etersoft.ru/etercifs

BASE_URI=ftp://updates.etersoft.ru/pub/Etersoft/CIFS@Etersoft/5.2.0/Gentoo/2009
SRC_URI="$BASE_URI/etercifs-5.2.0-eter1gentoo.noarch.tar.bz2 "
LICENSE=GPLv2
SLOT="0"
KEYWORDS="-* x86 amd64"

RDEPEND="!net-fs/cifs-utils
"


src_unpack() {
unpack ${A}
}

src_install() {
cp -pR * "${D}"
}
