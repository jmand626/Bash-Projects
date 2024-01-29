#!/bin/bash

####################################
# Name: Joban Mand
# CSE 391 - Autumn 2023
# Homework 3 - Task 2
####################################

function problem1 {
  # Type your answer to problem #1 below this line
  cut -d, -f1 intro_survey_23au.csv
}

function problem2 {
  # Type your answer to problem #2 below this line
  cat intro_survey_23au.csv <(tail -n +2 intro_survey_23sp.csv) > combined_results.csv
}

function problem3 {
  # Type your answer to problem #3 below this line
  grep -i "noodles" combined_results.csv | grep -i "cats" | wc -l
}

function problem4 {
  # Type your answer to problem #4 below this line
  grep -i "candy" intro_survey_23au.csv | cut -d ',' -f 1 | sort | uniq -c | sort -rn | head -n 3
}

function problem5 {
  # Type your answer to problem #5 below this line
  # Figure out how many people have a favorite candy less than starts with the letter s
  grep -i "candy" intro_survey_23au.csv | cut -d ',' -f 6 | grep -iE '^s' | wc -l
  # had to learn a little bit of regex for that one. Oh god please no. I picked that simple question because any more would get more regex than i can take on a saturday night
}
