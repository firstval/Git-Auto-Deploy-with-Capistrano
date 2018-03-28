#!/bin/bash
# Author name: Ruel Nopal
# Company: RaketHost PH Inc.
# url: www.rakethost.ph

# Add this to your repo directory. and add it to .gitignore files
# Change permission by running "sudo chmod +x gitautodeploy.sh"
# then run "./gitautodeploy.sh"

echo "This will auto deploy to git and capistrano"
git status
git add .
echo "Add your commit message."
read commitmessage
git commit -m "${commitmessage}"
git push

# Optional Need to have Capistrano install in your rails gemfile
echo "Capistrano Production Deploy"
cap production deploy
