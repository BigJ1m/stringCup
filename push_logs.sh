#!/bin/bash
cd /Users/Shared/system532/stringCup

date_str=$(date +%d%m)
git config --local user.email "you@example.com"
git config --local user.name "Your Name"

git mv liquid/log.txt "liquid/${date_str}_log.txt"
git commit -m "Rename and update log for $date_str"
git push https://<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>@github.com/BigJ1m/stringCup.git main
