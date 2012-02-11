# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit eutils

DESCRIPTION="Aliens Versus Predator Gold"
HOMEPAGE="http://linuxgameru.narod.ru"
SRC_URI="https://github.com/downloads/zaharchuktv/linuxgame/${P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RESTRICT="mirror strip"

RDEPEND="media-libs/openal"

src_unpack() {
	    unpack ${A}
	    
}

src_install() {
cd ${WORKDIR}
mkdir -p ${D}/usr/share/aliens-versus-predator-gold
mkdir -p ${D}/usr/share/applications
mkdir -p ${D}/usr/share/pixmaps
mkdir -p ${D}/usr/bin

cp -r ${WORKDIR}/${P}/raliens-versus-predator-gold.desktop ${D}/usr/share/aliens-versus-predator-gold/aliens-versus-predator-gold.desktop
cp -r ${WORKDIR}/${P}/aliens-versus-predator-gold.desktop ${D}/usr/share/applications/aliens-versus-predator-gold.desktop
#cp -r ${WORKDIR}/${P}/aliens-versus-predator-gold-unarh.desktop ${D}/usr/share/applications/aliens-versus-predator-gold-unarh.desktop
cp -r ${WORKDIR}/${P}/AliensVersusPredatorGold.png ${D}/usr/share/pixmaps
cp -r ${WORKDIR}/${P}/aliens-versus-predator-gold ${D}/usr/bin
cp -r ${WORKDIR}/${P}/aliens-versus-predator-gold-unarh ${D}/usr/bin
cp -r ${WORKDIR}/${P}/readme.txt ${D}/usr/share/aliens-versus-predator-gold

}

pkg_postinst() {

ln /usr/lib/libopenal.so /usr/lib/libopenal.so.0

}
