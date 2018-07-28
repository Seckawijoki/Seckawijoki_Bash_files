commitTime=$(date)
git checkout master
git pull origin master
git branch mergedBranch
git branch -a
git merge mergedBranch
git add .
git commit -m "$commitTime commit with merged branch"
git push origin master

git checkout master
git branch mergedBranch
git merge mergedBranch
git push origin mergedBranch

