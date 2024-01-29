#!/bin/bash

####################################
# Name: Joban Mand>
# CSE 391 - Autumn 2023
# Homework 4
####################################

function print_link {
  echo "https://gitlab.cs.washington.edu/cse391/23au/hw4/jmand1"
}

function problem1 {
  git log -1
}

function problem2 {
  git diff HEAD~2 HEAD
}

function problem3 {
  git blame menu.txt
}
