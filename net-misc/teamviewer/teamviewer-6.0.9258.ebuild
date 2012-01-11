# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit eutils

DESCRIPTION="the All-In-One Solution for Remote Access and Support over the Internet"
HOMEPAGE="http://www.teamviewer.com"
SRC_URI="http://www.teamviewer.com/download/${PN}_linux.tar.gz -> ${P}.tar.gz"

LICENSE="TeamViewer"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT="mirror strip"

RDEPEND="app-emulation/wine-etersoft-local"


src_unpack() {
	    unpack ${A}
	    
}

src_install() {
cd ${WORKDIR}
mkdir -p ${D}/usr/share/applications
mkdir -p ${D}/usr/share/pixmaps
mkdir -p ${D}/usr/bin
mkdir -p ${D}/opt
mkdir -p ${D}/opt/teamviewer-linuxbuh
mkdir -p ${D}/opt/teamviewer-linuxbuh/teamviewer6

cp -r ${WORKDIR}/teamviewer6 ${D}/opt/teamviewer-linuxbuh
cp -r ${FILESDIR}/teamviewer.desktop ${D}/usr/share/applications/teamviewer.desktop
cp -r ${FILESDIR}/teamviewerinstall.desktop ${D}/usr/share/applications/teamviewerinstall.desktop
cp -r ${FILESDIR}/killteamviewer.desktop ${D}/usr/share/applications/killteamviewer.desktop
cp -r ${FILESDIR}/teamviewer.png ${D}/usr/share/pixmaps
cp -r ${FILESDIR}/teamviewerinstall ${D}/usr/bin
cp -r ${FILESDIR}/teamviewer ${D}/usr/bin
cp -r ${FILESDIR}/killteamviewer ${D}/usr/bin

}

#pkg_postinst() {

#chmod -R 0777 /opt/teamviewer-linuxbuh/teamviewer6
#chmod -R 0777 /opt/teamviewer-linuxbuh/teamviewer6/profile

#}