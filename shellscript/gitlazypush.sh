#!/bin/sh

# Hello there user, please fill in the configuration and then we could start

#config
project_path="/home/kocoten1992/Code/tienganhlamienphi/website" #use absolute path
git_user="kocoten1992" #when you create ssh-keygen for github
git_email="ko_co_ten_1992@yahoo.com" #git config user.email

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

  chmod 755 -R . $project_path

  exec sudo -u $git_user /bin/sh - << _EOF_

  git add .
  git commit -m "$commit_message $(date +"%m-%d-%Y %T")"
  git push

_EOF_

fi

echo "Done, boss"
