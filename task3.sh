#!/bin/bash

####################################
# Name: Joban Mand
# CSE 391 - Autumn 2023
# Homework 3 - Task 3
####################################

function problem6 {
  # Type your answer to problem #6 below this line
  find -type d -name 'dir*' -print | xargs rm -r
}

function problem7 {
  # Type your answer to problem #7 below this line
  mkdir $(seq 1 9)
}

function problem8 {
  # Type your answer to problem #8 below this line
   (ls *.java | xargs javac) && java CheckTransactions 2> err.log
}
