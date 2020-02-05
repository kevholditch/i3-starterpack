#!/bin/bash
m=`nvidia-smi | sed -n '9p' | cut -d ' ' -f 20`
n=`nvidia-smi | sed -n '9p' | cut -d ' ' -f 23`
p=`nvidia-smi | sed -n '9p' | cut -d ' ' -f 29`
echo "$m/$n GPU:$p"

