commitTime=$(date)
git checkout master
<<<<<<< HEAD
git pull origin master
git branch mergedBranch
git branch -a
git merge mergedBranch
=======
>>>>>>> rebasedBranch
git add .
git commit -m "$commitTime commit with merged branch"
git push origin master

<<<<<<< HEAD
git checkout master

=======
git branch mergedBranch
git merge mergedBranch
git push origin mergedBranch
>>>>>>> rebasedBranch
