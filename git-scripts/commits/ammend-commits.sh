
# last commit
git add <file1> <file2> ...   # Add the files you want to modify
git commit --amend -m "New commit message"

# interactive rebase feature
#   - for previous commits (not last) 

# Step 1: identify commit hash
git log

# Step 2: start interactive session
#   - replace <commit-hash> with the hash of the commit immediately before the one you want to amend, followed by ^ (caret)
git rebase -i <commit-hash>^


# Step 3: specify commit to ammend
#   - find commit of interest
#   - pick -> edit
#       ° usually starts with "pick"
#       ° change "pick" to "edit"
#   - make changes

# Step 4: stage changes added by using
git add.

# Step 5: ammend the commmit
#   - use git commit --amend INSTEAD of git commit -m "..."

# Step 6: continue the rebase
#   - after amending the commit, continue the rebase with:
git rebase --continue
# Git will then apply the remaining commits after the one you amended

# Step 7 (if necessary)
# Resolve any conflicts (if necessary):
# If there are any conflicts during the rebase, Git will pause and allow you to resolve them manually using:
#   git add 
#   -- and -- 
#   git rebase --continue

# Step 8 (return to current commit)
git reset --hard HEAD
