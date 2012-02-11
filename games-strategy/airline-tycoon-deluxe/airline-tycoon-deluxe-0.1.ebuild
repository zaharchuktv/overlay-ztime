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

RDEPEND=""

src_unpack() {
	    unpack ${A}
	    
}

src_install() {
cd ${WORKDIR}
mkdir -p ${D}/usr/share/airline-tycoon-deluxe
mkdir -p ${D}/usr/share/applications
mkdir -p ${D}/usr/share/pixmaps
mkdir -p ${D}/usr/bin

cp -r ${WORKDIR}/${P}/airline-tycoon-deluxe.desktop ${D}/usr/share/airline-tycoon-deluxe/airline-tycoon-deluxe.desktop
cp -r ${WORKDIR}/${P}/airline-tycoon-deluxe.desktop ${D}/usr/share/applications/airline-tycoon-deluxe.desktop
#cp -r ${WORKDIR}/${P}/airline-tycoon-deluxe-unarh.desktop ${D}/usr/share/applications/airline-tycoon-deluxe-unarh.desktop
cp -r ${WORKDIR}/${P}/AirlineTycoonDeluxe.png ${D}/usr/share/pixmaps
cp -r ${WORKDIR}/${P}/airline-tycoon-deluxe ${D}/usr/bin
cp -r ${WORKDIR}/${P}/airline-tycoon-deluxe-unarh ${D}/usr/bin
cp -r ${WORKDIR}/${P}/readme.txt ${D}/usr/share/airline-tycoon-deluxe
}

#pkg_postinst() {

#wheel=`cat /etc/sudoers | grep "%wheel ALL=(ALL) NOPASSWD: ALL"`
#if [ "%wheel ALL=(ALL) NOPASSWD: ALL" = "$wheel" ]; then
#    echo "Запись %wheel ALL=(ALL) NOPASSWD: ALL уже есть в файле /etc/sudoers"
#    else
#    echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
#    fi
#}
