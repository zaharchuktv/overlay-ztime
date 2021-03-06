# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

inherit eutils

SRC_URI="https://github.com/downloads/zaharchuktv/files/${P}.tar.gz"

DESCRIPTION="Gismeteo for Chrome"
HOMEPAGE="https://chrome.google.com/webstore/detail/bfegaehidkkcfaikpaijcdahnpikhobf"
LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="www-client/chromium"

RDEPEND="${DEPEND}"

src_install() {
	dodir /usr/share/chromium-gismeteo
	insinto /usr/share/chromium-gismeteo
	doins -r *
}
