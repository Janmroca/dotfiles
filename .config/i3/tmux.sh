#!/bin/bash



sessId=$(tmux-next list-sessions| head -n1 | awk {'print $1'} | cut -d ":" -f1)

cmd="";

if [ -n "$sessId" ]; then cmd="tmux-next a -t $sessId";
else cmd="tmux-next"
fi

sleep 0.1
echo $2
i3-msg workspace $1 && $2 -e $cmd
