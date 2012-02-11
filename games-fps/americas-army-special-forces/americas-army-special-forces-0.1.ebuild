# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit eutils

DESCRIPTION="Americas ArmySpecial Forces"
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
mkdir -p ${D}/usr/share/americas-army-special-forces
mkdir -p ${D}/usr/share/applications
mkdir -p ${D}/usr/share/pixmaps
mkdir -p ${D}/usr/bin

cp -r ${WORKDIR}/${P}/americas-army-special-forces.desktop ${D}/usr/share/americas-army-special-forces/americas-army-special-forces.desktop
cp -r ${WORKDIR}/${P}/americas-army-special-forces.desktop ${D}/usr/share/applications/americas-army-special-forces.desktop
#cp -r ${WORKDIR}/${P}/americas-army-special-forces-unarh.desktop ${D}/usr/share/applications/americas-army-special-forces-unarh.desktop
cp -r ${WORKDIR}/${P}/AmericasArmySpecialForces.png ${D}/usr/share/pixmaps
cp -r ${WORKDIR}/${P}/americas-army-special-forces ${D}/usr/bin
cp -r ${WORKDIR}/${P}/americas-army-special-forces-unarh ${D}/usr/bin
cp -r ${WORKDIR}/${P}/readme.txt ${D}/usr/share/americas-army-special-forces

}

#pkg_postinst() {
#
#ln /usr/lib/libopenal.so /usr/lib/libopenal.so.0
#
#}
