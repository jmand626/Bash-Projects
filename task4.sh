#!/bin/bash

####################################
# Name: Joban Mand
# CSE 391
# Homework 1 - Task 4
####################################
# Tutorial focus:
# This file is the starting point for the repo. Each problem is a tiny
# command-line drill covering basic filesystem operations: copying files,
# listing directories, moving/renaming files, removing files, touching
# timestamps, using globs, comparing files, and printing file contents.
#
# The functions are intentionally small because the original homework
# harness called each problem separately.
####################################

function problem1 {
  # Copy a Java file into the java/ directory.
  cp MyProgram.java java/
}

function problem2 {
  # List files in long format.
  ls -l
}

function problem3 {
  # List /var in reverse order.
  ls -r /var
}

function problem4 {
  # Rename the misspelled Java file.
  mv Burrot.java Borat.java
}

function problem5 {
  # Remove the generated diff output files.
  rm diff.html diff.css
}

function problem6 {
  # Set MyProgram.java's timestamp to Jan. 1, 2020 at 04:15.
  touch -t 202001010415 MyProgram.java
}

function problem7 {
  # List HTML and CSS files in the current directory.
  ls *html *css
}

function problem8 {
  # Copy all text files into the java/ directory.
  cp *txt java/
}

function problem9 {
  # Compare two lyric files line by line.
  diff lyrics.txt lyrics2.txt
}

function problem10 {
  # Print the lyric file.
  cat lyrics.txt
}

function problem11 {
  # Check whether song.txt exists by listing it.
  ls song.txt
}

function problem12 {
  # Print the first seven lines of animals.txt.
  head -n 7 animals.txt
}
