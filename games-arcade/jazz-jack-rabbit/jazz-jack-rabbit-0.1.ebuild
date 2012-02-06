# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit eutils

DESCRIPTION="Jazz Jack Rabbit"
HOMEPAGE="http://linuxgameru.narod.ru"
SRC_URI="https://github.com/downloads/zaharchuktv/linuxgame/${P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RESTRICT="mirror strip"

RDEPEND="media-libs/libmodplug"

src_unpack() {
	    unpack ${A}
	    
}

src_install() {
cd ${WORKDIR}
mkdir -p ${D}/usr/share/jazz-jack-rabbit
mkdir -p ${D}/usr/share/applications
mkdir -p ${D}/usr/share/pixmaps
mkdir -p ${D}/usr/bin

cp -r ${WORKDIR}/${P}/jazz-jack-rabbit.desktop ${D}/usr/share/jazz-jack-rabbit/jazz-jack-rabbit.desktop
cp -r ${WORKDIR}/${P}/jazz-jack-rabbit.desktop ${D}/usr/share/applications/jazz-jack-rabbit.desktop
cp -r ${WORKDIR}/${P}/jazz-jack-rabbit-unarh.desktop ${D}/usr/share/applications/jazz-jack-rabbit-unarh.desktop
cp -r ${WORKDIR}/${P}/JazzJackRabbit.png ${D}/usr/share/pixmaps
cp -r ${WORKDIR}/${P}/jazz-jack-rabbit ${D}/usr/bin
cp -r ${WORKDIR}/${P}/jazz-jack-rabbit-unarh ${D}/usr/bin

}

#pkg_postinst() {

#wheel=`cat /etc/sudoers | grep "%wheel ALL=(ALL) NOPASSWD: ALL"`
#if [ "%wheel ALL=(ALL) NOPASSWD: ALL" = "$wheel" ]; then
#    echo "Запись %wheel ALL=(ALL) NOPASSWD: ALL уже есть в файле /etc/sudoers"
#    else
#    echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
#    fi
#}