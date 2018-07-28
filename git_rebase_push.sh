commitTime=$(date)
git branch rebasedBranch
git branch -a
git checkout rebasedBranch
git rebase master
git checkout master
git add .
git commit -m "$commitTime commit with rebased branch"
git push origin master

git checkout rebasedBranch
git pull origin master

