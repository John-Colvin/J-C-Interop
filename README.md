# Jai C interop example

The idea is that there is a pre-existing C codebase, complete with makefiles,
working "nicely". The user wants to port a part of it to Jai, so this is
roughly where they might end up.

## The Problem

It doesn't work & attempts to make it work seem NotGreat™

## Assumptions not actually present in the code

* The interface between the C code & Jai is large & unstable, so
  auto-generation of bindings is really desirable.

## Instructions

Edit `Makefile` to point to the Jai compiler

Run `make runJustC` to verify C code working as expected

Run `make runJaiAndC` to test the mixed Jai and C version

Run `make clean` to clean things up.
