# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/jonat/Desktop/lohmueller_lab/build

# Include any dependencies generated for this target.
include CMakeFiles/tables.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tables.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tables.dir/flags.make

CMakeFiles/tables.dir/treerec/tskit/convert.c.o: CMakeFiles/tables.dir/flags.make
CMakeFiles/tables.dir/treerec/tskit/convert.c.o: /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/convert.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/jonat/Desktop/lohmueller_lab/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tables.dir/treerec/tskit/convert.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tables.dir/treerec/tskit/convert.c.o   -c /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/convert.c

CMakeFiles/tables.dir/treerec/tskit/convert.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tables.dir/treerec/tskit/convert.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/convert.c > CMakeFiles/tables.dir/treerec/tskit/convert.c.i

CMakeFiles/tables.dir/treerec/tskit/convert.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tables.dir/treerec/tskit/convert.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/convert.c -o CMakeFiles/tables.dir/treerec/tskit/convert.c.s

CMakeFiles/tables.dir/treerec/tskit/convert.c.o.requires:

.PHONY : CMakeFiles/tables.dir/treerec/tskit/convert.c.o.requires

CMakeFiles/tables.dir/treerec/tskit/convert.c.o.provides: CMakeFiles/tables.dir/treerec/tskit/convert.c.o.requires
	$(MAKE) -f CMakeFiles/tables.dir/build.make CMakeFiles/tables.dir/treerec/tskit/convert.c.o.provides.build
.PHONY : CMakeFiles/tables.dir/treerec/tskit/convert.c.o.provides

CMakeFiles/tables.dir/treerec/tskit/convert.c.o.provides.build: CMakeFiles/tables.dir/treerec/tskit/convert.c.o


CMakeFiles/tables.dir/treerec/tskit/core.c.o: CMakeFiles/tables.dir/flags.make
CMakeFiles/tables.dir/treerec/tskit/core.c.o: /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/core.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/jonat/Desktop/lohmueller_lab/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/tables.dir/treerec/tskit/core.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tables.dir/treerec/tskit/core.c.o   -c /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/core.c

CMakeFiles/tables.dir/treerec/tskit/core.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tables.dir/treerec/tskit/core.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/core.c > CMakeFiles/tables.dir/treerec/tskit/core.c.i

CMakeFiles/tables.dir/treerec/tskit/core.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tables.dir/treerec/tskit/core.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/core.c -o CMakeFiles/tables.dir/treerec/tskit/core.c.s

CMakeFiles/tables.dir/treerec/tskit/core.c.o.requires:

.PHONY : CMakeFiles/tables.dir/treerec/tskit/core.c.o.requires

CMakeFiles/tables.dir/treerec/tskit/core.c.o.provides: CMakeFiles/tables.dir/treerec/tskit/core.c.o.requires
	$(MAKE) -f CMakeFiles/tables.dir/build.make CMakeFiles/tables.dir/treerec/tskit/core.c.o.provides.build
.PHONY : CMakeFiles/tables.dir/treerec/tskit/core.c.o.provides

CMakeFiles/tables.dir/treerec/tskit/core.c.o.provides.build: CMakeFiles/tables.dir/treerec/tskit/core.c.o


CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o: CMakeFiles/tables.dir/flags.make
CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o: /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/genotypes.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/jonat/Desktop/lohmueller_lab/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o   -c /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/genotypes.c

CMakeFiles/tables.dir/treerec/tskit/genotypes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tables.dir/treerec/tskit/genotypes.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/genotypes.c > CMakeFiles/tables.dir/treerec/tskit/genotypes.c.i

CMakeFiles/tables.dir/treerec/tskit/genotypes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tables.dir/treerec/tskit/genotypes.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/genotypes.c -o CMakeFiles/tables.dir/treerec/tskit/genotypes.c.s

CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o.requires:

.PHONY : CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o.requires

CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o.provides: CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o.requires
	$(MAKE) -f CMakeFiles/tables.dir/build.make CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o.provides.build
.PHONY : CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o.provides

CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o.provides.build: CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o


CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o: CMakeFiles/tables.dir/flags.make
CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o: /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/kastore/kastore.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/jonat/Desktop/lohmueller_lab/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o   -c /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/kastore/kastore.c

CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/kastore/kastore.c > CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.i

CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/kastore/kastore.c -o CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.s

CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o.requires:

.PHONY : CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o.requires

CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o.provides: CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o.requires
	$(MAKE) -f CMakeFiles/tables.dir/build.make CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o.provides.build
.PHONY : CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o.provides

CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o.provides.build: CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o


CMakeFiles/tables.dir/treerec/tskit/stats.c.o: CMakeFiles/tables.dir/flags.make
CMakeFiles/tables.dir/treerec/tskit/stats.c.o: /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/stats.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/jonat/Desktop/lohmueller_lab/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/tables.dir/treerec/tskit/stats.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tables.dir/treerec/tskit/stats.c.o   -c /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/stats.c

CMakeFiles/tables.dir/treerec/tskit/stats.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tables.dir/treerec/tskit/stats.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/stats.c > CMakeFiles/tables.dir/treerec/tskit/stats.c.i

CMakeFiles/tables.dir/treerec/tskit/stats.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tables.dir/treerec/tskit/stats.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/stats.c -o CMakeFiles/tables.dir/treerec/tskit/stats.c.s

CMakeFiles/tables.dir/treerec/tskit/stats.c.o.requires:

.PHONY : CMakeFiles/tables.dir/treerec/tskit/stats.c.o.requires

CMakeFiles/tables.dir/treerec/tskit/stats.c.o.provides: CMakeFiles/tables.dir/treerec/tskit/stats.c.o.requires
	$(MAKE) -f CMakeFiles/tables.dir/build.make CMakeFiles/tables.dir/treerec/tskit/stats.c.o.provides.build
.PHONY : CMakeFiles/tables.dir/treerec/tskit/stats.c.o.provides

CMakeFiles/tables.dir/treerec/tskit/stats.c.o.provides.build: CMakeFiles/tables.dir/treerec/tskit/stats.c.o


CMakeFiles/tables.dir/treerec/tskit/tables.c.o: CMakeFiles/tables.dir/flags.make
CMakeFiles/tables.dir/treerec/tskit/tables.c.o: /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/tables.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/jonat/Desktop/lohmueller_lab/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/tables.dir/treerec/tskit/tables.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tables.dir/treerec/tskit/tables.c.o   -c /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/tables.c

CMakeFiles/tables.dir/treerec/tskit/tables.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tables.dir/treerec/tskit/tables.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/tables.c > CMakeFiles/tables.dir/treerec/tskit/tables.c.i

CMakeFiles/tables.dir/treerec/tskit/tables.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tables.dir/treerec/tskit/tables.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/tables.c -o CMakeFiles/tables.dir/treerec/tskit/tables.c.s

CMakeFiles/tables.dir/treerec/tskit/tables.c.o.requires:

.PHONY : CMakeFiles/tables.dir/treerec/tskit/tables.c.o.requires

CMakeFiles/tables.dir/treerec/tskit/tables.c.o.provides: CMakeFiles/tables.dir/treerec/tskit/tables.c.o.requires
	$(MAKE) -f CMakeFiles/tables.dir/build.make CMakeFiles/tables.dir/treerec/tskit/tables.c.o.provides.build
.PHONY : CMakeFiles/tables.dir/treerec/tskit/tables.c.o.provides

CMakeFiles/tables.dir/treerec/tskit/tables.c.o.provides.build: CMakeFiles/tables.dir/treerec/tskit/tables.c.o


CMakeFiles/tables.dir/treerec/tskit/text_input.c.o: CMakeFiles/tables.dir/flags.make
CMakeFiles/tables.dir/treerec/tskit/text_input.c.o: /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/text_input.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/jonat/Desktop/lohmueller_lab/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/tables.dir/treerec/tskit/text_input.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tables.dir/treerec/tskit/text_input.c.o   -c /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/text_input.c

CMakeFiles/tables.dir/treerec/tskit/text_input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tables.dir/treerec/tskit/text_input.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/text_input.c > CMakeFiles/tables.dir/treerec/tskit/text_input.c.i

CMakeFiles/tables.dir/treerec/tskit/text_input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tables.dir/treerec/tskit/text_input.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/text_input.c -o CMakeFiles/tables.dir/treerec/tskit/text_input.c.s

CMakeFiles/tables.dir/treerec/tskit/text_input.c.o.requires:

.PHONY : CMakeFiles/tables.dir/treerec/tskit/text_input.c.o.requires

CMakeFiles/tables.dir/treerec/tskit/text_input.c.o.provides: CMakeFiles/tables.dir/treerec/tskit/text_input.c.o.requires
	$(MAKE) -f CMakeFiles/tables.dir/build.make CMakeFiles/tables.dir/treerec/tskit/text_input.c.o.provides.build
.PHONY : CMakeFiles/tables.dir/treerec/tskit/text_input.c.o.provides

CMakeFiles/tables.dir/treerec/tskit/text_input.c.o.provides.build: CMakeFiles/tables.dir/treerec/tskit/text_input.c.o


CMakeFiles/tables.dir/treerec/tskit/trees.c.o: CMakeFiles/tables.dir/flags.make
CMakeFiles/tables.dir/treerec/tskit/trees.c.o: /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/trees.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/jonat/Desktop/lohmueller_lab/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/tables.dir/treerec/tskit/trees.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tables.dir/treerec/tskit/trees.c.o   -c /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/trees.c

CMakeFiles/tables.dir/treerec/tskit/trees.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tables.dir/treerec/tskit/trees.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/trees.c > CMakeFiles/tables.dir/treerec/tskit/trees.c.i

CMakeFiles/tables.dir/treerec/tskit/trees.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tables.dir/treerec/tskit/trees.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM/treerec/tskit/trees.c -o CMakeFiles/tables.dir/treerec/tskit/trees.c.s

CMakeFiles/tables.dir/treerec/tskit/trees.c.o.requires:

.PHONY : CMakeFiles/tables.dir/treerec/tskit/trees.c.o.requires

CMakeFiles/tables.dir/treerec/tskit/trees.c.o.provides: CMakeFiles/tables.dir/treerec/tskit/trees.c.o.requires
	$(MAKE) -f CMakeFiles/tables.dir/build.make CMakeFiles/tables.dir/treerec/tskit/trees.c.o.provides.build
.PHONY : CMakeFiles/tables.dir/treerec/tskit/trees.c.o.provides

CMakeFiles/tables.dir/treerec/tskit/trees.c.o.provides.build: CMakeFiles/tables.dir/treerec/tskit/trees.c.o


# Object files for target tables
tables_OBJECTS = \
"CMakeFiles/tables.dir/treerec/tskit/convert.c.o" \
"CMakeFiles/tables.dir/treerec/tskit/core.c.o" \
"CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o" \
"CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o" \
"CMakeFiles/tables.dir/treerec/tskit/stats.c.o" \
"CMakeFiles/tables.dir/treerec/tskit/tables.c.o" \
"CMakeFiles/tables.dir/treerec/tskit/text_input.c.o" \
"CMakeFiles/tables.dir/treerec/tskit/trees.c.o"

# External object files for target tables
tables_EXTERNAL_OBJECTS =

libtables.a: CMakeFiles/tables.dir/treerec/tskit/convert.c.o
libtables.a: CMakeFiles/tables.dir/treerec/tskit/core.c.o
libtables.a: CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o
libtables.a: CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o
libtables.a: CMakeFiles/tables.dir/treerec/tskit/stats.c.o
libtables.a: CMakeFiles/tables.dir/treerec/tskit/tables.c.o
libtables.a: CMakeFiles/tables.dir/treerec/tskit/text_input.c.o
libtables.a: CMakeFiles/tables.dir/treerec/tskit/trees.c.o
libtables.a: CMakeFiles/tables.dir/build.make
libtables.a: CMakeFiles/tables.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/jonat/Desktop/lohmueller_lab/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking C static library libtables.a"
	$(CMAKE_COMMAND) -P CMakeFiles/tables.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tables.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tables.dir/build: libtables.a

.PHONY : CMakeFiles/tables.dir/build

CMakeFiles/tables.dir/requires: CMakeFiles/tables.dir/treerec/tskit/convert.c.o.requires
CMakeFiles/tables.dir/requires: CMakeFiles/tables.dir/treerec/tskit/core.c.o.requires
CMakeFiles/tables.dir/requires: CMakeFiles/tables.dir/treerec/tskit/genotypes.c.o.requires
CMakeFiles/tables.dir/requires: CMakeFiles/tables.dir/treerec/tskit/kastore/kastore.c.o.requires
CMakeFiles/tables.dir/requires: CMakeFiles/tables.dir/treerec/tskit/stats.c.o.requires
CMakeFiles/tables.dir/requires: CMakeFiles/tables.dir/treerec/tskit/tables.c.o.requires
CMakeFiles/tables.dir/requires: CMakeFiles/tables.dir/treerec/tskit/text_input.c.o.requires
CMakeFiles/tables.dir/requires: CMakeFiles/tables.dir/treerec/tskit/trees.c.o.requires

.PHONY : CMakeFiles/tables.dir/requires

CMakeFiles/tables.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tables.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tables.dir/clean

CMakeFiles/tables.dir/depend:
	cd /mnt/c/Users/jonat/Desktop/lohmueller_lab/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM /mnt/c/Users/jonat/Desktop/lohmueller_lab/SLiM /mnt/c/Users/jonat/Desktop/lohmueller_lab/build /mnt/c/Users/jonat/Desktop/lohmueller_lab/build /mnt/c/Users/jonat/Desktop/lohmueller_lab/build/CMakeFiles/tables.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tables.dir/depend

