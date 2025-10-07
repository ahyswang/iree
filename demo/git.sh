#/bin/bash 

git branch dev
git checkout dev
git remote add backup git@github.com:ahyswang/iree.git
git push --set-upstream backup dev