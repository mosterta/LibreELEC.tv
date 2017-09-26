################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="libvdpau-sunxi"
PKG_VERSION="f7ced56"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="https://wiki.freedesktop.org/www/Software/VDPAU/"
PKG_GIT_URL="https://github.com/mosterta/libvdpau-sunxi.git"
PKG_GIT_BRANCH="master"
PKG_SOURCE_DIR="libvdpau-sunxi-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain libvdpau libump"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="libvdpau driver for Allwinner CPU: a Video Decode and Presentation API for UNIX."
PKG_LONGDESC="VDPAU is the Video Decode and Presentation API for UNIX. It provides an interface to video decode acceleration and presentation hardware present in modern GPUs."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  make CC="$CC" LD="$LD" AR="$LD" CFLAGS="$CFLAGS"
}

makeinstall_target () {
  make CC="$CC" LD="$LD" AR="$LD" CFLAGS="$CFLAGS" DESTDIR=$INSTALL install
  make CC="$CC" LD="$LD" AR="$LD" CFLAGS="$CFLAGS" DESTDIR=$SYSROOT_PREFIX install
}
