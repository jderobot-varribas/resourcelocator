#  Copyright (C) 2016 Victor Arribas
#  License: GPLv3 <http://www.gnu.org/licenses/gpl-3.0.html> or above
#  Authors:
#    Victor Arribas <v.arribas.urjc@gmail.com>

cmake_minimum_required(VERSION 2.6)

project(resourcelocator-dev)

SET (CPACK_PACKAGE_VERSION_MAJOR 1)
SET (CPACK_PACKAGE_VERSION_MINOR 0)
SET (CPACK_PACKAGE_VERSION_PATCH 0)

SET (CPACK_PACKAGE_CONTACT "Victor Arribas <v.arribas.urjc@gmail.com>")
SET (CPACK_PACKAGE_DESCRIPTION_SUMMARY
"A tiny and simple library to locate anything under preconfigured paths.
 You can obtain a copy of source code from: https://github.com/jderobot-varribas/resourcelocator
 .
 It will find filename into all defined search paths.
 Order is:
  1. current dir
  2. environment variable ($YOUR_ENV_VAR)
  3. hardcored paths (string[])
") 

SET(CPACK_DEBIAN_PACKAGE_DEPENDS "")

SET (CPACK_DEBIAN_PACKAGE_PRIORITY "extra")
SET (CPACK_DEBIAN_PACKAGE_SECTION "devel")


SET (CPACK_GENERATOR "DEB")
SET (CPACK_DEBIAN_PACKAGE_SHLIBDEPS OFF)
SET (CPACK_SET_DESTDIR ON)
SET (CPACK_PACKAGING_INSTALL_PREFIX "/usr/local")


include (CPack Documentation)
