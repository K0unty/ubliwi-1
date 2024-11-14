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
Clean and Kill
---
'

# Functions
b1() {
    clear
    echo -e "${YE}${t1}${NC}"
}

co() {
    curl -L https://raw.githubusercontent.com/xyizko/xo-rel-s-rd/refs/heads/main/filez/docker_cleanup.sh | bash
}

# Run
b1
co
