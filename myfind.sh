#!/bin/bash
#
# A proper find
# First parameter specifies search term
# Second parameter defines the directory
#
# Recursively searchs strings in all subdirectories 
# of specified directory
#

find ${2:-.} -type f -name "*" -print0 | xargs -0 grep -in "$1"
