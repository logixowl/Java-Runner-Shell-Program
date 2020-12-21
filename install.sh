#!/bin/bash

chmod +x jrun.sh
path=`pwd`/jrun.sh
cmd="\nalias jrun=$path"
echo -e $cmd >> ~/.bashrc
rm -rf install.sh