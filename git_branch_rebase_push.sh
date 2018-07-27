commitTime=$(date)
git branch rebasedBranch
git branch -a
git add .
git commit -m "$commitTime"
git push origin master

git checkout rebasedBranch
git add .
git commit -m "$commitTime rebase to master"
git rebase master
git push origin rebasedBranch

