#!/bin/bash

# Some data comes in as:
# "0.2,234"
#
# This will remove quotes and change the comma into a space

sed -e 's/"//g' -e 's/,/ /g' $1
