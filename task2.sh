#!/bin/bash

####################################
# Name: Joban Mand
# CSE 391 - Autumn 2023
# Homework 3 - Task 2
####################################
# Tutorial focus:
# This file shows how Bash turns simple text utilities into a data-analysis
# workflow. The problems use CSV files as input and combine cut, cat, tail,
# grep, sort, uniq, and wc to extract columns, merge data, filter rows, and
# count answers.
####################################

function problem1 {
  # Print the first CSV field from the Autumn survey.
  cut -d, -f1 intro_survey_23au.csv
}

function problem2 {
  # Combine two CSV files while keeping the header only once.
  cat intro_survey_23au.csv <(tail -n +2 intro_survey_23sp.csv) > combined_results.csv
}

function problem3 {
  # Count rows that mention both noodles and cats, case-insensitively.
  grep -i "noodles" combined_results.csv | grep -i "cats" | wc -l
}

function problem4 {
  # Find the three most common first-field values among candy-related rows.
  grep -i "candy" intro_survey_23au.csv | cut -d ',' -f 1 | sort | uniq -c | sort -rn | head -n 3
}

function problem5 {
  # Count favorite-candy entries that start with the letter s.
  # This is the first place the repo starts leaning on regular expressions.
  grep -i "candy" intro_survey_23au.csv | cut -d ',' -f 6 | grep -iE '^s' | wc -l
}
