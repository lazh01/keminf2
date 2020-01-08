# Install script for directory: /home/selar16/keminf2/keminf2/assignment2/Option1_Atom-Atom

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/doStuff" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/doStuff")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/doStuff"
         RPATH "/mnt/Shared/jlandersen/shared/lib")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/doStuff")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE EXECUTABLE FILES "/home/selar16/keminf2/keminf2/assignment2/Option1_Atom-Atom/doStuff")
  if(EXISTS "$ENV{DESTDIR}/usr/local/doStuff" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/doStuff")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/doStuff"
         OLD_RPATH "/mnt/Shared/jlandersen/shared/lib:"
         NEW_RPATH "/mnt/Shared/jlandersen/shared/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/doStuff")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/pydoStuff.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/pydoStuff.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/pydoStuff.so"
         RPATH "/mnt/Shared/jlandersen/shared/lib:/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/pydoStuff.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE MODULE FILES "/home/selar16/keminf2/keminf2/assignment2/Option1_Atom-Atom/pydoStuff.so")
  if(EXISTS "$ENV{DESTDIR}/usr/local/pydoStuff.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/pydoStuff.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/pydoStuff.so"
         OLD_RPATH "/mnt/Shared/jlandersen/shared/lib:/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu:"
         NEW_RPATH "/mnt/Shared/jlandersen/shared/lib:/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/pydoStuff.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/selar16/keminf2/keminf2/assignment2/Option1_Atom-Atom/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
