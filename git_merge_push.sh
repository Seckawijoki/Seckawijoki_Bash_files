commitTime=$(date)
git checkout master
git merge mergedBranch
git add .
git commit -m "$commitTime commit with merged branch"
git push origin master

git checkout mergedBranch
git pull origin master
