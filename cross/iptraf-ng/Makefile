PKG_NAME = iperf
PKG_VERS = 3.1.3
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS)-source.$(PKG_EXT)
PKG_DIST_SITE = https://iperf.fr/download/source
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/ncurses

HOMEPAGE = https://iperf.fr
COMMENT  = iPerf3 is a tool for active measurements of the maximum achievable bandwidth on IP networks.
LICENSE  = 3-clause-BSD

GNU_CONFIGURE = 1

include ../../mk/spksrc.cross-cc.mk
