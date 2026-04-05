#!/usr/bin/env bash
# CATEGORY: C++/Java
# MODULE: cpp_java

## gbuild
# @desc  Compile a single C++ file
# @usage gbuild <file.cpp> <output>
# @example gbuild main.cpp app
gbuild() { g++ -std=c++17 -Wall "$1" -o "${2:-a.out}"; }

## runcpp
# @desc  Compile and run a C++ file instantly
# @usage runcpp <file.cpp>
# @example runcpp script.cpp
runcpp() { g++ -std=c++17 -Wall "$1" && ./a.out; }

## mc
# @desc  Make clean
# @usage mc
# @example mc
alias mc='make clean'

## m
# @desc  Make
# @usage m
# @example m
alias m='make -j$(nproc)'

## jbuild
# @desc  Compile a Java file
# @usage jbuild <File.java>
# @example jbuild Main.java
alias jbuild='javac'

## jrun
# @desc  Run a compiled Java class
# @usage jrun <Class>
# @example jrun Main
alias jrun='java'

## mci
# @desc  Maven clean install
# @usage mci
# @example mci
alias mci='mvn clean install'
