# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="Data migration utilities"
HOMEPAGE="https://pypi.python.org/pypi/${PN}"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-python/datashape[${PYTHON_USEDEP}]
		dev-python/numpy[${PYTHON_USEDEP}]
		>=dev-python/pandas-0.15[${PYTHON_USEDEP}]
		dev-python/toolz[${PYTHON_USEDEP}]
		dev-python/multipledispatch[${PYTHON_USEDEP}]
		dev-python/networkx[${PYTHON_USEDEP}]
		!media-libs/urt" # Bug #552448
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
