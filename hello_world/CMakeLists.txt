set(LIBRARY_NAME hello_world)
add_library (${LIBRARY_NAME} STATIC src/injectable.cpp)

target_include_directories(${LIBRARY_NAME} INTERFACE
    $<BUILD_INTERFACE:
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    ${CMAKE_CURRENT_SOURCE_DIR}/include/${LIBRARY_NAME}>
    $<INSTALL_INTERFACE:include/>
)
