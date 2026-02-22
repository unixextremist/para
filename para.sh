#!/bin/bash

workspaces=$(wmctrl -d | awk '{print $NF}' | sed ':a;N;$!ba;s/\n/ \/ /g')

notify-send "wmctrl says" "$workspaces"
# herbe "wmctrl says $workspaces"
