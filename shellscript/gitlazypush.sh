#!/bin/sh

# Hello there user, please fill in the configuration and then we could start
# After fill in config, turn back and read this
# So if you want to quick n dirty git push, map an alias command to run this script
# ex: ch fix_some_issue (take first argument as commit message)

#config
project_path="/home/kocoten1992/Code/someproject/website" #use absolute path
git_user="someguy" #when you create ssh-keygen for github
git_email="someguy@example.com" #git config user.email

# From now to the end, it none of your business, feel free to read though
# Logging into the user

current_user=$USER
commit_message=$1

# If not the desirable user
if [ $current_user != "root" ]; then

  echo "This script need root privilege (to chown and chmod)"

fi


# I was root
if [ $current_user = "root" ]; then

  chown $git_user -R $project_path

  chmod 755 -R $project_path

  exec sudo -u $git_user /bin/sh - << _EOF_

  cd $project_path

  git add .
  git commit -m "$commit_message $(date +"%m-%d-%Y %T")"
  git push

_EOF_

fi
