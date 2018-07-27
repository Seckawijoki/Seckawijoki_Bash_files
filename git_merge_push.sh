commitTime=$(date)
git checkout master
git branch mergedBranch
git branch -a
git add .
git commit -m "$commitTime commit with merged branch"
git push origin master

git checkout mergedBranch
git merge mergedBranch
git push origin mergedBranch

git checkout master

