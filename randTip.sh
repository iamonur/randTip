#!/bin/bash
echo -e "\e[1;31m-----Random tip for this terminal session-----\e[32m"
shuf -n 1 $(pwd)/tips
echo -e "\e[0m"
