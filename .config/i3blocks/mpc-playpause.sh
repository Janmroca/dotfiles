#!/bin/bash

if [ -n "$(mpc | grep playing)" ]; then
    mpc pause
else
    mpc play
fi