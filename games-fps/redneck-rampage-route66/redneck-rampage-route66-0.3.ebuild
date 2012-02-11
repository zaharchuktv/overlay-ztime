# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit eutils

DESCRIPTION="Redneck Rampage Suckin Grits on Route 66 addon"
HOMEPAGE="http://linuxgameru.narod.ru"
SRC_URI="https://github.com/downloads/zaharchuktv/linuxgame/${P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RESTRICT="mirror strip"

RDEPEND="media-libs/alsa-oss"

src_unpack() {
	    unpack ${A}
	    
}

src_install() {
cd ${WORKDIR}
mkdir -p ${D}/usr/share/redneck-rampage-route66
mkdir -p ${D}/usr/share/applications
mkdir -p ${D}/usr/share/pixmaps
mkdir -p ${D}/usr/bin

cp -r ${WORKDIR}/${P}/redneck-rampage-route66.desktop ${D}/usr/share/redneck-rampage-route66/redneck-rampage-route66.desktop
cp -r ${WORKDIR}/${P}/redneck-rampage-route66.desktop ${D}/usr/share/applications/redneck-rampage-route66.desktop
#cp -r ${WORKDIR}/${P}/redneck-rampage-route66-unarh.desktop ${D}/usr/share/applications/redneck-rampage-route66-unarh.desktop
cp -r ${WORKDIR}/${P}/RedneckRampageRoute66.png ${D}/usr/share/pixmaps
cp -r ${WORKDIR}/${P}/redneck-rampage-route66 ${D}/usr/bin
cp -r ${WORKDIR}/${P}/redneck-rampage-route66-unarh ${D}/usr/bin
cp -r ${WORKDIR}/${P}/readme.txt ${D}/usr/share/redneck-rampage-route66

}


#pkg_postinst() {

#wheel=`cat /etc/sudoers | grep "%wheel ALL=(ALL) NOPASSWD: ALL"`
#if [ "%wheel ALL=(ALL) NOPASSWD: ALL" = "$wheel" ]; then
#    echo "Запись %wheel ALL=(ALL) NOPASSWD: ALL уже есть в файле /etc/sudoers"
#    else
#    echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
#    fi
#}