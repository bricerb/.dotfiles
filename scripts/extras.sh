#! /bin/bash
#
# Usage: extras
#
# Runs any commands that are not run in other starting scripts
#

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

echo "${CYAN} Running extras ${NC}"

# Install NVM
echo "${YELLOW}>>>>> Downloading nvm\n${NC}"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
echo "${GREEN}>>>>> Finished downloading nvm\n${NC}"

echo "${CYAN} Finished running extras${NC}"
