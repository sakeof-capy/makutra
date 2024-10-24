add_executable (makutra makutra.cpp makutra.h)
target_link_libraries (makutra dynamic_di)

if (CMAKE_VERSION VERSION_GREATER 3.12)
  set_property(TARGET makutra PROPERTY CXX_STANDARD 20)
endif()
