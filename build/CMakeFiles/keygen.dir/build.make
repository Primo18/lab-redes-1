# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kali/Desktop/redes/lab-redes-1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kali/Desktop/redes/lab-redes-1/build

# Include any dependencies generated for this target.
include CMakeFiles/keygen.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/keygen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/keygen.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/keygen.dir/flags.make

CMakeFiles/keygen.dir/src/keygen.c.o: CMakeFiles/keygen.dir/flags.make
CMakeFiles/keygen.dir/src/keygen.c.o: /home/kali/Desktop/redes/lab-redes-1/src/keygen.c
CMakeFiles/keygen.dir/src/keygen.c.o: CMakeFiles/keygen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kali/Desktop/redes/lab-redes-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/keygen.dir/src/keygen.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/keygen.dir/src/keygen.c.o -MF CMakeFiles/keygen.dir/src/keygen.c.o.d -o CMakeFiles/keygen.dir/src/keygen.c.o -c /home/kali/Desktop/redes/lab-redes-1/src/keygen.c

CMakeFiles/keygen.dir/src/keygen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/keygen.dir/src/keygen.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kali/Desktop/redes/lab-redes-1/src/keygen.c > CMakeFiles/keygen.dir/src/keygen.c.i

CMakeFiles/keygen.dir/src/keygen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/keygen.dir/src/keygen.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kali/Desktop/redes/lab-redes-1/src/keygen.c -o CMakeFiles/keygen.dir/src/keygen.c.s

CMakeFiles/keygen.dir/src/crypto.c.o: CMakeFiles/keygen.dir/flags.make
CMakeFiles/keygen.dir/src/crypto.c.o: /home/kali/Desktop/redes/lab-redes-1/src/crypto.c
CMakeFiles/keygen.dir/src/crypto.c.o: CMakeFiles/keygen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kali/Desktop/redes/lab-redes-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/keygen.dir/src/crypto.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/keygen.dir/src/crypto.c.o -MF CMakeFiles/keygen.dir/src/crypto.c.o.d -o CMakeFiles/keygen.dir/src/crypto.c.o -c /home/kali/Desktop/redes/lab-redes-1/src/crypto.c

CMakeFiles/keygen.dir/src/crypto.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/keygen.dir/src/crypto.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kali/Desktop/redes/lab-redes-1/src/crypto.c > CMakeFiles/keygen.dir/src/crypto.c.i

CMakeFiles/keygen.dir/src/crypto.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/keygen.dir/src/crypto.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kali/Desktop/redes/lab-redes-1/src/crypto.c -o CMakeFiles/keygen.dir/src/crypto.c.s

CMakeFiles/keygen.dir/src/util.c.o: CMakeFiles/keygen.dir/flags.make
CMakeFiles/keygen.dir/src/util.c.o: /home/kali/Desktop/redes/lab-redes-1/src/util.c
CMakeFiles/keygen.dir/src/util.c.o: CMakeFiles/keygen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kali/Desktop/redes/lab-redes-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/keygen.dir/src/util.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/keygen.dir/src/util.c.o -MF CMakeFiles/keygen.dir/src/util.c.o.d -o CMakeFiles/keygen.dir/src/util.c.o -c /home/kali/Desktop/redes/lab-redes-1/src/util.c

CMakeFiles/keygen.dir/src/util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/keygen.dir/src/util.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kali/Desktop/redes/lab-redes-1/src/util.c > CMakeFiles/keygen.dir/src/util.c.i

CMakeFiles/keygen.dir/src/util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/keygen.dir/src/util.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kali/Desktop/redes/lab-redes-1/src/util.c -o CMakeFiles/keygen.dir/src/util.c.s

# Object files for target keygen
keygen_OBJECTS = \
"CMakeFiles/keygen.dir/src/keygen.c.o" \
"CMakeFiles/keygen.dir/src/crypto.c.o" \
"CMakeFiles/keygen.dir/src/util.c.o"

# External object files for target keygen
keygen_EXTERNAL_OBJECTS =

keygen: CMakeFiles/keygen.dir/src/keygen.c.o
keygen: CMakeFiles/keygen.dir/src/crypto.c.o
keygen: CMakeFiles/keygen.dir/src/util.c.o
keygen: CMakeFiles/keygen.dir/build.make
keygen: _deps/sodium-build/libsodium.a
keygen: CMakeFiles/keygen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kali/Desktop/redes/lab-redes-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable keygen"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/keygen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/keygen.dir/build: keygen
.PHONY : CMakeFiles/keygen.dir/build

CMakeFiles/keygen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/keygen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/keygen.dir/clean

CMakeFiles/keygen.dir/depend:
	cd /home/kali/Desktop/redes/lab-redes-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kali/Desktop/redes/lab-redes-1 /home/kali/Desktop/redes/lab-redes-1 /home/kali/Desktop/redes/lab-redes-1/build /home/kali/Desktop/redes/lab-redes-1/build /home/kali/Desktop/redes/lab-redes-1/build/CMakeFiles/keygen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/keygen.dir/depend

