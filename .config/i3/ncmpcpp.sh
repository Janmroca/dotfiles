#!/bin/bash



cmd="ncmpcpp";

sleep 3.5
i3-msg workspace $1 && $2 -e $cmd