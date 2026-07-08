#!/bin/bash

####################################
# Name: Joban Mand
# CSE 391 - Autumn 2023
# Homework 3 - Task 3
####################################
# Tutorial focus:
# This file moves from single commands to bulk operations. It uses find to
# discover matching paths, xargs to feed those paths into another command,
# command substitution to generate arguments, and && / redirection to chain a
# compile-and-run workflow.
####################################

function problem6 {
  # Find directories whose names start with dir and remove them recursively.
  find -type d -name 'dir*' -print | xargs rm -r
}

function problem7 {
  # Create directories named 1 through 9 using command substitution.
  mkdir $(seq 1 9)
}

function problem8 {
  # Compile every Java file, then run CheckTransactions if compilation works.
  # Standard error from the Java program is redirected into err.log.
  (ls *.java | xargs javac) && java CheckTransactions 2> err.log
}
