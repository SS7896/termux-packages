TERMUX_PKG_HOMEPAGE=https://www.deepspace6.net/projects/ipv6calc.html
TERMUX_PKG_DESCRIPTION="Does some format changes and calculations of IPv6 addresses"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="4.3.0"
TERMUX_PKG_SRCURL=https://github.com/pbiering/ipv6calc/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=0255b811b09ddbfb4afdffe639b5eb91406a67134def5230d2c53ac80f8f4dd0
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="openssl, perl"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--with-external-db=$TERMUX_PREFIX/share/ipv6calc/db
--with-dbip-db=$TERMUX_PREFIX/share/DBIP
--with-ip2location-db=$TERMUX_PREFIX/share/IP2Location
"
TERMUX_PKG_EXTRA_MAKE_ARGS="exec_prefix=$TERMUX_PREFIX"

termux_step_pre_configure() {
	CFLAGS+=" $CPPFLAGS"
	LDFLAGS+=" -lcrypto -lm"
}
