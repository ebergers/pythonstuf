#!/bin/bash

SCRIPT_FOLDER="$HOME/.git-directory/pythonstuf/"
SCRIPT_FILE="$SCRIPT_FOLDER/$1.py"
DATE=$(date)

if [[ -f "$SCRIPT_FILE" ]]; then
    echo file already exists.
else
    echo '#!/usr/bin/env python' > "$SCRIPT_FILE"
    echo "#" >> "$SCRIPT_FILE"
    echo "# Dit script is gemaakt op: ""$DATE" >> "$SCRIPT_FILE"
    chmod +x "$SCRIPT_FILE"
    vim "$SCRIPT_FILE"
fi
