# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/kali/Desktop/redes/lab-redes-1/build/_deps/sodium-src"
  "/home/kali/Desktop/redes/lab-redes-1/build/_deps/sodium-build"
  "/home/kali/Desktop/redes/lab-redes-1/build/_deps/sodium-subbuild/sodium-populate-prefix"
  "/home/kali/Desktop/redes/lab-redes-1/build/_deps/sodium-subbuild/sodium-populate-prefix/tmp"
  "/home/kali/Desktop/redes/lab-redes-1/build/_deps/sodium-subbuild/sodium-populate-prefix/src/sodium-populate-stamp"
  "/home/kali/Desktop/redes/lab-redes-1/build/_deps/sodium-subbuild/sodium-populate-prefix/src"
  "/home/kali/Desktop/redes/lab-redes-1/build/_deps/sodium-subbuild/sodium-populate-prefix/src/sodium-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/kali/Desktop/redes/lab-redes-1/build/_deps/sodium-subbuild/sodium-populate-prefix/src/sodium-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/kali/Desktop/redes/lab-redes-1/build/_deps/sodium-subbuild/sodium-populate-prefix/src/sodium-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
