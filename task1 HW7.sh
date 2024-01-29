#!/bin/bash

####################################
# Name: Joban Mand
# CSE 391 - Autumn 2023
# Homework 7 - Task 1
####################################

function problem1 {
  # Type your answer to problem #1 below this line
  sed -ri.bak 's/Insert Catchy Slogan Here/This is My New (Noncatchy) Slogan/' GenerateSite.java
}

function problem2 {
  # Type your answer to problem #2 below this line
  sed -ri.bak 's/dirt/soil/i' Products.java
}

function problem3 {
  # Type your answer to problem #3 below this line
  sed -ri.bak 's/public (\w+)\s+(\w+);/private \1 \2;/' Employee.java
}

function problem4 {
  # Type your answer to problem #4 below this line
  sed -r 's/ //g; s/([0-9]{4})/\1 /g; s/ $//' cards.txt
}

function problem5 {
  # Type your answer to problem #5 below this line
  sed -ri.bak 's/\/\*([^*]+)\*\//\/\/ \1 /' Products.java
}

function problem6 {
  # Type your answer to problem #6 below this line
   find . -type f -name "*.java" -print0 | xargs -0 sed -ri.bak 's/FAANG/24AndMe/gi' 
}

function problem7 {
  # Type your answer to problem #7 below this line
  git log | sed -n -r '/^Author:/s/Author: (.+) <(.+)>/\1 <\2>/Ip' | grep -v 'CC Ahrens <ccahrens@cs.washington.edu>' | sort -u > contributors.txt
}

function problem8 {
  # Type your answer to problem #8 below this line
   cat contributors.txt | sed -n -E 's/([^<]+) <.+>$/\1/p' | sort -u
}

function problem9 {
  # Type your answer to problem #9 below this line
   sed -r 's/unique/replace/gi' contributors.txt
}

