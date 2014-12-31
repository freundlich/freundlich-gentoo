# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

CMAKE_MIN_VERSION="2.8.12"
inherit cmake-utils git-2

EGIT_REPO_URI="git://github.com/freundlich/mizuiro.git"

DESCRIPTION="A generic image library"
HOMEPAGE=""

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="
	test? ( dev-libs/boost )
"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs="
		$(cmake-utils_use_enable test)
	"

	cmake-utils_src_configure
}
