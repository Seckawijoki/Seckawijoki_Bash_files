commitTime=$(date)
git branch mergedBranch
git branch -a
git add .
git commit -m "$commitTime"
git push origin master
git merge mergedBranch
git push origin mergedBranch

