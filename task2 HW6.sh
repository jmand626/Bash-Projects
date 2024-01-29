#!/bin/bash

problem4() {
    grep -E "^[a-zA-Z0-9]{1,16}@[a-z]+\.[a-z]{2,}$" emails.txt
}

problem5() {
    grep -E "^.*[A-Z].*[a-z].*[0-9]$|^.*[a-z].*[A-Z].*[0-9]$|^.*[0-9].*[a-z].*[A-Z]$" passwords.txt
}

problem6() {
    grep -E "^5([0-9]{3}\s)([0-9]{4}\s)([0-9]{4}\s)([0-9]{4})|^4([0-9]{3}\s)([0-9]{4}\s)([0-9]{4}\s)([0-9]{1,4})$" cards.txt
}
