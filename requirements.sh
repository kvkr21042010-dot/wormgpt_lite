#!/data/data/com.termux/files/usr/bin/bash

# ===============================
# wormgpt_lite Requirements Installer
# ===============================

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m'

clear

# ===============================
# BANNER
# ===============================

echo -e "${CYAN}"
cat << "EOF"
██╗    ██╗ ██████╗ ██████╗ ███╗   ███╗ ██████╗ ██████╗ ████████╗
██║    ██║██╔═══██╗██╔══██╗████╗ ████║██╔════╝ ██╔══██╗╚══██╔══╝
██║ █╗ ██║██║   ██║██████╔╝██╔████╔██║██║  ███╗██████╔╝   ██║   
██║███╗██║██║   ██║██╔══██╗██║╚██╔╝██║██║   ██║██╔═══╝    ██║   
╚███╔███╔╝╚██████╔╝██║  ██║██║ ╚═╝ ██║╚██████╔╝██║        ██║   
 ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝        ╚═╝   

        wormgpt_lite v1.0
        Requirements Installer
EOF
echo -e "${NC}"

echo -e "${CYAN}======================================${NC}"

# ===============================
# TERMUX CHECK
# ===============================

if [[ -z "$PREFIX" ]]; then
    echo -e "${RED}This installer is designed for Termux only.${NC}"
    exit 1
fi

# ===============================
# INSTALLATION PROCESS
# ===============================

echo -e "${YELLOW}Updating packages...${NC}"
pkg update -y && pkg upgrade -y

REQUIRED_PKGS=(curl jq git coreutils)

for pkg in "${REQUIRED_PKGS[@]}"; do
    if ! command -v $pkg &> /dev/null; then
        echo -e "${YELLOW}Installing $pkg...${NC}"
        pkg install -y $pkg
    else
        echo -e "${GREEN}$pkg already installed ✔${NC}"
    fi
done

echo -e "${CYAN}======================================${NC}"
echo -e "${GREEN}All requirements installed successfully!${NC}"
echo -e "${CYAN}Run your AI using:${NC} ${GREEN}./wormgpt_lite.sh${NC}"
echo -e "${CYAN}======================================${NC}"
