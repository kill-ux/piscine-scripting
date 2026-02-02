#!/bin/bash

echo $PWD
printenv | awk -F "=" '{print $1}' | grep "H" 