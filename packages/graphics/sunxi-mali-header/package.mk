################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
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

PKG_NAME="sunxi-mali-header"
PKG_VERSION="d343311"
PKG_REV="1"
PKG_ARCH="arm"
PKG_LICENSE="nonfree"
PKG_SITE="https://github.com/WhiteWind/sunxi-mali-proprietary"
PKG_GIT_URL="https://github.com/linux-sunxi/sunxi-mali.git"
PKG_GIT_BRANCH="master"
PKG_SOURCE_DIR="sunxi-mali-header-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain libX11"
PKG_PRIORITY="optional"
PKG_SECTION="graphics"
PKG_SHORTDESC="sunxi-mali: OpenGL-ES and Mali driver for Mali 400 GPUs"
PKG_LONGDESC="sunxi-mali: OpenGL-ES and Mali driver for Mali 400 GPUs"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
 : # nothing todo
}

makeinstall_target() {
  mkdir -p $SYSROOT_PREFIX/usr/include
    cp -PR include/* $SYSROOT_PREFIX/usr/include
}

