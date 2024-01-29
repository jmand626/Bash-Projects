#!/bin/bash

problem1() {
    grep -E "[0-9]" names.txt
}

problem2() {
    grep -E "^[a-zA-Z]{4}$" names.txt
}

problem3() {
    grep -E "^[A-Z][a-z]+ [A-Z][a-z]+$" names.txt
}
