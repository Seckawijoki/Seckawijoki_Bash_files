commitTime=$(date)
git checkout master
git pull origin master
git branch mergedBranch
git branch -a
git merge mergedBranch
git branch mergedBranch
git branch -a
git commit -m "$commitTime commit with merged branch"
git push origin master


