# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit python

DESCRIPTION="Caffeine a small Python / GTK application to disable the screen saver during the selected applications."
HOMEPAGE="https://launchpad.net/~caffeine-developers"
SRC_URI="https://launchpad.net/~caffeine-developers/+archive/ppa/+files/caffeine_1.0.1-0ubuntu0~ppa16~jaunty.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
DEPEND="dev-python/python-xlib"
RDEPEND="${DEPEND}"

src_unpack() {
	    unpack ${A}
	    
}

src_install() {
cd ${WORKDIR}
python ${WORKDIR}/setup.py build
python ${WORKDIR}/setup.py install

}

#pkg_postinst() {

#chmod -R 0777 /opt/teamviewer-linuxbuh/teamviewer
#chmod -R 0777 /opt/teamviewer-linuxbuh/teamviewer/profile

#}