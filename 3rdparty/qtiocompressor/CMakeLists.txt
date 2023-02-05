include_directories(${QTINCLUDES} ${CMAKE_BINARY_DIR} ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_BINARY_DIR})
ADD_LIBRARY(qtiocompressor STATIC qtiocompressor.cpp)
target_link_libraries(qtiocompressor ZLIB::ZLIB)
