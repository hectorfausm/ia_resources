@ECHO off

SET /P CommitString=Please enter your commit string: 
git add .
git commit -m "%CommitString%"
git push -u origin main