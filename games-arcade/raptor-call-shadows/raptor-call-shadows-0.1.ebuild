# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit eutils

DESCRIPTION="Raptor Call of the Shadows"
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
mkdir -p ${D}/usr/share/raptor-call-shadows
mkdir -p ${D}/usr/share/applications
mkdir -p ${D}/usr/share/pixmaps
mkdir -p ${D}/usr/bin

cp -r ${WORKDIR}/${P}/raptor-call-shadows.desktop ${D}/usr/share/raptor-call-shadows/raptor-call-shadows.desktop
cp -r ${WORKDIR}/${P}/raptor-call-shadows.desktop ${D}/usr/share/applications/raptor-call-shadows.desktop
#cp -r ${WORKDIR}/${P}/raptor-call-shadows-unarh.desktop ${D}/usr/share/applications/raptor-call-shadows-unarh.desktop
cp -r ${WORKDIR}/${P}/RaptorCalloftheShadows.png ${D}/usr/share/pixmaps
cp -r ${WORKDIR}/${P}/raptor-call-shadows ${D}/usr/bin
cp -r ${WORKDIR}/${P}/raptor-call-shadows-unarh ${D}/usr/bin
cp -r ${WORKDIR}/${P}/readme.txt ${D}/usr/share/raptor-call-shadows

}

#pkg_postinst() {

#wheel=`cat /etc/sudoers | grep "%wheel ALL=(ALL) NOPASSWD: ALL"`
#if [ "%wheel ALL=(ALL) NOPASSWD: ALL" = "$wheel" ]; then
#    echo "Запись %wheel ALL=(ALL) NOPASSWD: ALL уже есть в файле /etc/sudoers"
#    else
#    echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
#    fi
#}