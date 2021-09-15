#!/bin/bash

if pgrep buckle
then
    pgrep buckle | xargs kill
else
    cd ~/Softwares/bucklespring/ && ./buckle
fi
