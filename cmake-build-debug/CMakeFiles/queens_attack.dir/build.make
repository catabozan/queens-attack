# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/cata/Downloads/clion-2018.3.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/cata/Downloads/clion-2018.3.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cata/CLionProjects/queens-attack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cata/CLionProjects/queens-attack/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/queens_attack.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/queens_attack.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/queens_attack.dir/flags.make

CMakeFiles/queens_attack.dir/main.cpp.o: CMakeFiles/queens_attack.dir/flags.make
CMakeFiles/queens_attack.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cata/CLionProjects/queens-attack/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/queens_attack.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/queens_attack.dir/main.cpp.o -c /home/cata/CLionProjects/queens-attack/main.cpp

CMakeFiles/queens_attack.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/queens_attack.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cata/CLionProjects/queens-attack/main.cpp > CMakeFiles/queens_attack.dir/main.cpp.i

CMakeFiles/queens_attack.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/queens_attack.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cata/CLionProjects/queens-attack/main.cpp -o CMakeFiles/queens_attack.dir/main.cpp.s

# Object files for target queens_attack
queens_attack_OBJECTS = \
"CMakeFiles/queens_attack.dir/main.cpp.o"

# External object files for target queens_attack
queens_attack_EXTERNAL_OBJECTS =

queens_attack: CMakeFiles/queens_attack.dir/main.cpp.o
queens_attack: CMakeFiles/queens_attack.dir/build.make
queens_attack: CMakeFiles/queens_attack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cata/CLionProjects/queens-attack/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable queens_attack"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/queens_attack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/queens_attack.dir/build: queens_attack

.PHONY : CMakeFiles/queens_attack.dir/build

CMakeFiles/queens_attack.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/queens_attack.dir/cmake_clean.cmake
.PHONY : CMakeFiles/queens_attack.dir/clean

CMakeFiles/queens_attack.dir/depend:
	cd /home/cata/CLionProjects/queens-attack/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cata/CLionProjects/queens-attack /home/cata/CLionProjects/queens-attack /home/cata/CLionProjects/queens-attack/cmake-build-debug /home/cata/CLionProjects/queens-attack/cmake-build-debug /home/cata/CLionProjects/queens-attack/cmake-build-debug/CMakeFiles/queens_attack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/queens_attack.dir/depend
