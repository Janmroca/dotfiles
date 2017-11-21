#!/bin/bash


sessId=$(tmux list-sessions| head -n1 | awk {'print $1'} | cut -d ":" -f1)

if [ -n "$sessId" ]; then tmux a -t $sessId;
else tmux
fi

