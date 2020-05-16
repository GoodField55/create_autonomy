cmake_minimum_required(VERSION 2.8.3)
project(ca_driver)

find_package(libcreate REQUIRED)

find_package(catkin REQUIRED COMPONENTS
  ca_msgs
  diagnostic_msgs
  diagnostic_updater
  geometry_msgs
  nav_msgs
  roscpp
  roslint
  sensor_msgs
  std_msgs
  tf
)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS
    ca_msgs
    diagnostic_msgs
    diagnostic_updater
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
  DEPENDS libcreate
)


message(STATUS "libcreate_INCLUDE_DIRS : ${libcreate_INCLUDE_DIRS}")
message(STATUS "catkin_INCLUDE_DIRS : ${catkin_INCLUDE_DIRS}")


roslint_cpp()
roslint_add_test()

include_directories(
  include
  ${libcreate_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME} src/create_driver.cpp)

message(STATUS "PROJECT_NAME : ${PROJECT_NAME}")

target_link_libraries(${PROJECT_NAME}
  ${libcreate_LIBRARIES}
  ${catkin_LIBRARIES}
)

message(STATUS "libcreate_LIBRARIES : ${libcreate_LIBRARIES}")
message(STATUS "catkin_LIBRARIES : ${catkin_LIBRARIES}")

add_dependencies(${PROJECT_NAME} ${catkin_EXPORTED_TARGETS})

message(STATUS "catkin_EXPORTED_TARGETS : ${catkin_EXPORTED_TARGETS}")

install(TARGETS ${PROJECT_NAME}
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

message(STATUS "CATKIN_PACKAGE_LIB_DESTINATION : ${CATKIN_PACKAGE_LIB_DESTINATION}")
message(STATUS "CATKIN_PACKAGE_BIN_DESTINATION : ${CATKIN_PACKAGE_BIN_DESTINATION}")

install(DIRECTORY include
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h"
  PATTERN ".svn" EXCLUDE
)

message(STATUS "CATKIN_PACKAGE_INCLUDE_DESTINATION : ${CATKIN_PACKAGE_INCLUDE_DESTINATION}")

install(DIRECTORY launch/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
  PATTERN ".svn" EXCLUDE
)

message(STATUS "CATKIN_PACKAGE_SHARE_DESTINATION : ${CATKIN_PACKAGE_SHARE_DESTINATION}")

install(DIRECTORY config/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/config
  PATTERN ".svn" EXCLUDE
)
