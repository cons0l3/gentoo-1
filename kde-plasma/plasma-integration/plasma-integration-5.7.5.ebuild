# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

VIRTUALX_REQUIRED="test"
inherit kde5

DESCRIPTION="Qt Platform Theme integration plugins for the Plasma workspaces"
LICENSE="LGPL-2+"
KEYWORDS="amd64 ~arm x86"
IUSE=""

DEPEND="
	$(add_frameworks_dep kcompletion)
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kconfigwidgets)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kiconthemes)
	$(add_frameworks_dep kio)
	$(add_frameworks_dep kjobwidgets)
	$(add_frameworks_dep knotifications)
	$(add_frameworks_dep kwayland)
	$(add_frameworks_dep kwidgetsaddons)
	$(add_frameworks_dep kwindowsystem)
	$(add_frameworks_dep kxmlgui)
	$(add_plasma_dep breeze)
	$(add_qt_dep qtdbus)
	$(add_qt_dep qtgui '' '' '5=')
	$(add_qt_dep qtwidgets)
	$(add_qt_dep qtx11extras)
	x11-libs/libXcursor
"
RDEPEND="${DEPEND}
	$(add_plasma_dep oxygen-fonts '' 5.4.3)
	media-fonts/noto
"

# requires running kde environment
RESTRICT="test"
