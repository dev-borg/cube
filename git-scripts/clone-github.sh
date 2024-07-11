#!/bin/bash

if [ $# -ne 2 ] ; then
	echo "Usage: two parameters required: github username and git repository to be cloned"
        exit 1
fi

git_username="$1"
repo="$2"

echo "$HOME/git_projects"
# make __git_projects, if does not yet exist
if [ ! -d "$HOME/git_projects" ] ; then 
	echo "here" ; exit
	mkdir "$HOME/git_projects" || { echo "Error: Could not create $repo_dir. Check permissions."; exit 1; }
fi

# Clone github repository to directory with project name (to be created) in ~/:
# html
#git clone https://github.com/dev-borg/fin_proj.git
# ssh
git clone git@github.com:"$git_username"/"$repo".git "$HOME/git_projects/$repo" 

