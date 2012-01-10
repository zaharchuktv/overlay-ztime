# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v3
# $Header: $

inherit eutils 

DESCRIPTION="Update system LinuxBuh.RU Distrib"
HOMEPAGE="http://www.linuxbuh.ru"
SRC_URI="https://github.com/downloads/zaharchuktv/overlay-ztime/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=""

RDEPEND="${DEPEND}"

src_unpack() {
	    unpack ${A}
	    
}


#src_compile() {
#	emake || die "make failed"
#}

src_install() {
cd ${WORKDIR}
mkdir -p ${D}/usr/share/pixmaps
mkdir -p ${D}/usr/share/applications
mkdir -p ${D}/usr/bin

cp -r ${WORKDIR}/labels/*.desktop ${D}/usr/share/applications
cp -r ${WORKDIR}/images/*.png ${D}/usr/share/pixmaps
cp -r ${WORKDIR}/updatesystem-linuxbuhdistr ${D}/usr/bin

}

#pkg_postinst() {
#	elog "The program scans the update overlays and displays a message about the updates to the desktop."
#	elog "If necessary, updates the world."
#	elog "After installation, edit the following files:"
#	elog "1) in /etc/update-system-notify/desktop.cfg enter your DE option"
#	elog "for GNOME - gnome-panel parameter for KDE - plasma-desktop"
#	elog "2) the file update-system-notify.cron move the folder /etc/cron.hourly /etc/cron.weekly folder or any other"
#	elog "Read for more information /usr/share/doc/update-system-notify/README.txt
#}
