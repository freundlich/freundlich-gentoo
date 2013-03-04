# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit cmake-utils git-2

EGIT_REPO_URI="git://github.com/freundlich/majutsu.git"

DESCRIPTION="A library for record-like datatypes"
HOMEPAGE=""

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	~dev-cpp/fcppt-9999
	dev-libs/boost
"
RDEPEND="${DEPEND}"