#! /bin/bash
# 
# Usage: Remove and set cron jobs

# CRON_EXPRESSION="25 9,15 * * *"
CRON_EXPRESSION="* 9,15,16 * * *"
HOME_DIR="/Users/$USER"
CRONJOBS_DIR="$HOME_DIR/.dotfiles/scripts/cronjobs"

# Delete Crontab job
crontab -r

# Repo Upkeep
(crontab -l 2>/dev/null; echo "$CRON_EXPRESSION $CRONJOBS_DIR/repo_upkeep.sh") | crontab -