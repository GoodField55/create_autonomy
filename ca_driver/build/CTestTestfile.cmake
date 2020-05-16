# CMake generated Testfile for 
# Source directory: /home/ubuntu/catkin_ws/src/create_autonomy/ca_driver
# Build directory: /home/ubuntu/catkin_ws/src/create_autonomy/ca_driver/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_ca_driver_roslint_package "/home/ubuntu/catkin_ws/src/create_autonomy/ca_driver/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/src/create_autonomy/ca_driver/build/test_results/ca_driver/roslint-ca_driver.xml" "--working-dir" "/home/ubuntu/catkin_ws/src/create_autonomy/ca_driver/build" "--return-code" "/opt/ros/kinetic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/ubuntu/catkin_ws/src/create_autonomy/ca_driver/build/test_results/ca_driver/roslint-ca_driver.xml make roslint_ca_driver")
subdirs(gtest)
