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

PKG_NAME="sunxi-mali-libs"
PKG_VERSION="1c5063f"
PKG_REV="1"
PKG_ARCH="arm"
PKG_LICENSE="nonfree"
PKG_SITE="https://github.com/WhiteWind/sunxi-mali-proprietary"
PKG_GIT_URL="https://github.com/linux-sunxi/sunxi-mali-proprietary.git"
PKG_GIT_BRANCH="master"
PKG_SOURCE_DIR="sunxi-mali-proprietary-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain"
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
  cwd=$CWD
  mkdir -p $SYSROOT_PREFIX/usr/lib
    cp -PR r3p0/armhf/framebuffer/*.so* $SYSROOT_PREFIX/usr/lib
    pushd $SYSROOT_PREFIX/usr/lib
    rm -f libEGL.so*
    rm -f libGLES*.so*
    ln -s libEGL.so.1 libEGL.so
    ln -s libEGL.so.1.4 libEGL.so.1 
    ln -s libMali.so libEGL.so.1.4
    ln -s libGLESv1_CM.so.1 libGLESv1_CM.so 
    ln -s libGLESv1_CM.so.1.1 libGLESv1_CM.so.1 
    ln -s libMali.so libGLESv1_CM.so.1.1 
    ln -s libGLESv2.so.2 libGLESv2.so
    ln -s libGLESv2.so.2.0 libGLESv2.so.2
    ln -s libMali.so libGLESv2.so.2.0
    popd
    
  mkdir -p $INSTALL/usr/lib
    cp -PR r3p0/armhf/framebuffer/*.so* $INSTALL/usr/lib
    pushd $INSTALL/usr/lib
    rm -f libEGL.so*
    rm -f libGLES*.so*
    ln -s libEGL.so.1 libEGL.so
    ln -s libEGL.so.1.4 libEGL.so.1 
    ln -s libMali.so libEGL.so.1.4
    ln -s libGLESv1_CM.so.1 libGLESv1_CM.so 
    ln -s libGLESv1_CM.so.1.1 libGLESv1_CM.so.1 
    ln -s libMali.so libGLESv1_CM.so.1.1 
    ln -s libGLESv2.so.2 libGLESv2.so
    ln -s libGLESv2.so.2.0 libGLESv2.so.2
    ln -s libMali.so libGLESv2.so.2.0
    popd
}

