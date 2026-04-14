#!/bin/bash

cd screenshots

latest=$(ls *.webp 2>/dev/null | grep -E '^[0-9]+\.webp$' | sort -n | tail -1 | cut -d. -f1)
next=$((${latest:-0} + 1))
cwebp -q 80 "`ls ~/Pictures/Screenshots/* -t | head -1`" -o "${next}.webp"

cd ..

echo >> README.md
echo "![](./screenshots/$next.webp)" >> README.md
