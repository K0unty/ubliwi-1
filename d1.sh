#!/usr/bin/bash
set -euo pipefail

# Colors
RE='\e[0;31m'
GR='\e[0;32m'
YE='\e[0;33m'
BL='\e[0;34m'
NC='\e[0m'

# Vars
t1='
---
Start container from docker or run existing one
---
'

c1='docker container run -it kalilinux/kali-rolling sh'
c2='docker run -v ./filez:/filez -it kalilinux/kali-rolling:latest'
c3='docker run -v ./filez:/filez -it happy_jackson'

# Functions
b1() {
    clear
    echo -e "${YE}${t1}${NC}"
}

co() {
    echo -e "${GR}${c2}${NC}"
    $c2
}

# Run
b1
co
