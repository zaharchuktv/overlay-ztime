# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit eutils

DESCRIPTION="Games for Linux"
HOMEPAGE="http://linuxgameru.narod.ru"
SRC_URI="http://www.teamviewer.com/download/${P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT="mirror strip"

RDEPEND=""


src_unpack() {
	    unpack ${A}
	    
}

src_install() {
cd ${WORKDIR}
mkdir -p ${D}/usr/share/linuxgame-installer
mkdir -p ${D}/usr/share/linuxgame-installer/txt
mkdir -p ${D}/usr/share/applications
mkdir -p ${D}/usr/share/pixmaps
mkdir -p ${D}/usr/bin

cp -r ${WORKDIR}/${P}/linuxgame-installer.desktop ${D}/usr/share/applications/linuxgame-installer.desktop
cp -r ${WORKDIR}/${P}/linuxgame-installer-update.desktop ${D}/usr/share/applications/linuxgame-installer-update.desktop
cp -r ${WORKDIR}/${P}/linuxgame-installer.png ${D}/usr/share/pixmaps
cp -r ${WORKDIR}/${P}/linuxgame-installer-update ${D}/usr/bin
cp -r ${WORKDIR}/${P}/linuxgame-installer ${D}/usr/bin
cp -r ${WORKDIR}/${P}/txt ${D}/usr/share/linuxgame-installer


}

pkg_postinst() {

wheel=`cat /etc/sudoers | grep "%wheel ALL=(ALL) NOPASSWD: ALL"`
if [ "%wheel ALL=(ALL) NOPASSWD: ALL" = "$wheel" ]; then
    echo "Запись %wheel ALL=(ALL) NOPASSWD: ALL уже есть в файле /etc/sudoers"
    else
    echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
    fi

}