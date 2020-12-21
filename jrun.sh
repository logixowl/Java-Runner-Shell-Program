#!/bin/bash

echo -n "" > tmp_for_jrun
javac $1 2> tmp_for_jrun
if [ $? == 0 ]
then
        java `echo $1 | cut -d '.' -f 1` 2> tmp_for_jrun
        if [ $? != 0 ]
        then
                cat tmp_for_jrun
        fi
else
        cat tmp_for_jrun
fi

# logixowl