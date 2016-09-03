#  Copyright (C) 2016 Victor Arribas
#  License: GPLv3 <http://www.gnu.org/licenses/gpl-3.0.html> or above
#  Authors:
#    Victor Arribas <v.arribas.urjc@gmail.com>


## Library
# Install
install(TARGETS ${binname}
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
)

install(DIRECTORY include/
	DESTINATION ${CMAKE_INSTALL_PREFIX}/include
)


## pkg-config
# Config
set(prefix ${CMAKE_INSTALL_PREFIX})
set(libdir ${prefix}/lib)
#set(VERSION 1.0.0)

set(includedir ${prefix}/include)
configure_file(${PROJECT_NAME}.pc.in ${PROJECT_NAME}.pc)

# Install
install(FILES
	"${CMAKE_BINARY_DIR}/${PROJECT_NAME}.pc"
	DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig/"
)
