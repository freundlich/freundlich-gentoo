# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git

EGIT_REPO_URI="git://timeoutd.org/jmdict.git"

DESCRIPTION="Japanese dictionary by Florian Blümel"
HOMEPAGE="http://jmdict.sourceforge.net/"
SRC_URI=""
LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-db/sqlite-3 
        dev-libs/expat"
DEPEND="${RDEPEND}
        sys-devel/make"
PDEPEND="app-dicts/jmdict-data"

src_compile() {
	emake || die
}

src_install() {
	emake install DESTDIR=${D} || die
}
