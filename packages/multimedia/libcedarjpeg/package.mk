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

PKG_NAME="libcedarjpeg"
PKG_VERSION="75ec7da"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/mosterta/libcedarjpeg.git"
PKG_GIT_URL="https://github.com/mosterta/libcedarjpeg.git"
PKG_GIT_BRANCH="master"
PKG_SOURCE_DIR="libcedarjpeg-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain libvdpau-sunxi"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="libcedarjpeg: a jpeg Decode library, which supports the hardware decoding engine of allwinner SoC."
PKG_LONGDESC="libcedarjpeg decodes jpeg with help of the hardware jpeg decoding engine of Allwinner Socs"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  make CC="$CC" \
       LD="$LD" \
       AR="$LD"
}

