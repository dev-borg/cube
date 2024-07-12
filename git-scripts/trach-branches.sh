#!/bin/bash

branch=

# if branch does not yet exist in local repository
git branch --track $branch

# if branch already exists in local repository
git branch --set-upstream-to=origin/development development
