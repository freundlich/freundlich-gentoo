# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit cmake-utils games git

EGIT_REPO_URI="git://github.com/freundlich/sanguis.git"

DESCRIPTION="A crimsonland clone"
HOMEPAGE="http://redmine.supraverse.net/projects/sanguis"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	=dev-cpp/fcppt-9999
	=dev-cpp/mizuiro-9999
	=dev-cpp/libawl-9999
	>=dev-libs/boost-1.45.0
	=dev-games/spacegameengine-9999[audio,cegui,config,console,fonttext,image,image2d,input,parse,projectile,renderer,sprite,systems,texture,time,viewport,window]
	>=dev-games/cegui-0.7.5
"
RDEPEND="${DEPEND}"

src_unpack() {
	git_src_unpack

	S=${WORKDIR}/statechart EGIT_REPO_URI="git://github.com/freundlich/statechart.git" git_src_unpack
}

src_configure() {
	local mycmakeargs=(
		-D CMAKE_INSTALL_PREFIX="${GAMES_PREFIX}"
		-D INSTALL_LIBRARY_DIR=$(games_get_libdir)
		-D INSTALL_DATA_DIR_BASE="${GAMES_DATADIR}"
		-D STATECHART_INCLUDE_DIR="${WORKDIR}"/statechart/include
	)

	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install

	prepgamesdirs
}