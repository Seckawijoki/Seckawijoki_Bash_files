commitTime=$(date)
git checkout master
<<<<<<< HEAD
<<<<<<< HEAD
git pull origin master
git branch mergedBranch
git branch -a
git merge mergedBranch
=======
>>>>>>> rebasedBranch
=======
git branch mergedBranch
git branch -a
>>>>>>> 9f868c43b743cafaa31aa882a91b091cc12a6493
git add .
git commit -m "$commitTime commit with merged branch"
git push origin master

<<<<<<< HEAD
<<<<<<< HEAD
git checkout master

=======
git branch mergedBranch
git merge mergedBranch
git push origin mergedBranch
>>>>>>> rebasedBranch
=======
git checkout mergedBranch
git merge mergedBranch
git push origin rebasedBranch

>>>>>>> 9f868c43b743cafaa31aa882a91b091cc12a6493
