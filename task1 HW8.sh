#!/bin/bash

####################################
# Name: Joban Mand
# CSE 391 - Autumn 2022 
# Homework 8 - Task 1
####################################

function problem1 {
  # Type your answer to problem #1 below this line
  tar -xzvf hw8.tar.gz
}

function problem2 {
  # Type your answer to problem #2 below this line
  chmod 111 README.md
}

function problem3 {
  # Type your answer to problem #3 below this line
  find . -type f -name "*.java" | xargs chmod +r
}

function problem4a {
  # Type your answer to problem #4a below this line
  find . -type f -name "*.html" -print0 | xargs -0 chmod u+rwx,go+r
}

function problem4b {
  # Type your answer to problem #4b below this line
  find . -type f -name "*.html" -print0 | xargs -0 chmod 744
}

function problem5 {
  # Type your answer to problem #5 below this line
  chgrp -R wheel .
}

function problem6 {
  # Type your answer to problem #6 below this line
  umask 0377
}

function problem7 {
  # Type your answer to problem #7 below this line
  sudo cat password.secret
}


