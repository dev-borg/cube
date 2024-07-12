#!/bin/bash

for remote in $(git branch -r | grep -v '\->'); do
    git fetch "${remote#origin/}":"${remote#origin/}"
    git branch --track "${remote#origin/}" "$remote" || true
done

