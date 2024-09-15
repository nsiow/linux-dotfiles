#!/bin/bash
WS_NAME=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name')
WS_NAME_NEW=$(zenity --text="Enter new name:" --entry --title="Rename workspace $WS_NAME" --entry-text="$WS_NAME")
i3-msg "rename workspace \"$WS_NAME\" to \"$WS_NAME_NEW\"" 
