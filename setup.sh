#!/bin/bash
bash logo.sh
# Colors for better UI
GREEN='\033[1;32m'
RED='\033[1;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to install packages with error handling
install_pkg() {
    echo -e "${YELLOW}[+] Installing: $1 ${NC}"
    if pkg install -y "$1" &> /dev/null; then
        echo -e "${GREEN}[✓] $1 installed successfully!${NC}"
    else
        echo -e "${RED}[✗] Failed to install $1!${NC}"
    fi
}

# Update & Upgrade
echo -e "${YELLOW}[+] Updating Packages...${NC}"
pkg update -y && pkg upgrade -y
echo -e "${GREEN}[✓] Updated Successfully!${NC}"

# Basic Tools
install_pkg git
install_pkg curl
install_pkg wget
install_pkg nano
install_pkg vim
install_pkg python

# Development Tools
install_pkg clang
install_pkg make
install_pkg cmake
install_pkg nodejs
install_pkg rust
install_pkg golang
install_pkg php
install_pkg ruby
install_pkg perl

# SSH Setup
echo -e "${YELLOW}[+] Setting up SSH...${NC}"
install_pkg openssh
if [ ! -f ~/.ssh/id_ed25519 ]; then
    ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N ""
    echo -e "${GREEN}[✓] SSH Key Generated!${NC}"
    echo -e "${YELLOW}Public Key:${NC}"
    cat ~/.ssh/id_ed25519.pub
else
    echo -e "${YELLOW}[!] SSH Key already exists.${NC}"
fi

# Extra Tools
install_pkg nmap
install_pkg ffmpeg
install_pkg figlet
install_pkg neofetch

# Termux Storage Setup
echo -e "${YELLOW}[+] Setting up Termux Storage...${NC}"
termux-setup-storage
bash logo.sh
echo -e "${GREEN}[✓] Done!${NC}"
echo -e "${GREEN}\n[✓] All Done! Enjoy Termux! 😊${NC}"
