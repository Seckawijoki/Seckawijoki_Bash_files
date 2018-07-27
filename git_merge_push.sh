commitTime=$(date)
git checkout master
git add .
git commit -m "$commitTime commit with merged branch"
git push origin master

git branch mergedBranch
git merge mergedBranch
git push origin mergedBranch
