#!/bin/bash
m=`nvidia-smi | sed -n '9p' | cut -d ' ' -f 20`
n=`nvidia-smi | sed -n '9p' | cut -d ' ' -f 23`
p=`nvidia-smi | sed -n '9p' | cut -d ' ' -f 29`

if [[ -z "${p// }" ]]; then
   p=`nvidia-smi | sed -n '9p' | cut -d ' ' -f 30`
fi

echo "$m/$n GPU:$p"

