TERMUX_PKG_HOMEPAGE=https://www.xfce.org/
TERMUX_PKG_DESCRIPTION="Application library for XFCE"
TERMUX_PKG_LICENSE="GPL-2.0, LGPL-2.1"
TERMUX_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com>"
TERMUX_PKG_VERSION=0.12.11
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=http://archive.xfce.org/src/xfce/exo/${TERMUX_PKG_VERSION:0:4}/exo-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=ec892519c08a67f3e0a1f0f8d43446e26871183e5aa6be7f82e214f388d1e5b6
TERMUX_PKG_DEPENDS="hicolor-icon-theme, libxfce4ui"
TERMUX_PKG_CONFLICTS="libexo"
TERMUX_PKG_REPLACES="libexo"
TERMUX_PKG_PROVIDES="libexo"
TERMUX_PKG_RM_AFTER_INSTALL="share/icons/hicolor/icon-theme.cache"
