#!/bin/bash

problem7() {
    grep -Ei "^[ACGT]+$" dna.txt
}

problem8() {
    grep -Ei "[^ACGT]+" dna.txt
}

problem9() {
    grep -B 1 -i "CAT" dna.txt
}

problem10() {
    grep -Ei "^([AGCT]{3}).*\1$" dna.txt 
}

problem11() {
    grep -Ei "^[ACGT]{3}+$" dna.txt
}

problem12() {
    grep -Ei "^ATG([ACGT]{3}){4,}(TAA|TAG|TGA)" dna.txt
}
