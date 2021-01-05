#!/bin/sh

#current_time=$(date "+%Y.%m.%d-%H.%M.%S")
current_time=$(date +"%Y-%m-%dT%T")
nvim .diary_$current_time.txt
