
#!/bin/bash

git push origin local_branch_name

# --force
git push --force origin local_branch_name

# safer than --force
# only forces the push if the remote branch has not been updated since you last fetched
git push --force-with-lease origin your-branch-name

