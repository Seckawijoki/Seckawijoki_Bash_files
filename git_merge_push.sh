commitTime=$(date)
git checkout master
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 2a3de2c8e6dc224edf6c411cb512d5fb7c37da62
git pull origin master
git branch mergedBranch
git branch -a
git merge mergedBranch
<<<<<<< HEAD
=======
=======
>>>>>>> rebasedBranch
=======
git branch mergedBranch
git branch -a
>>>>>>> 9f868c43b743cafaa31aa882a91b091cc12a6493
>>>>>>> 2a3de2c8e6dc224edf6c411cb512d5fb7c37da62
git add .
git commit -m "$commitTime commit with merged branch"
git push origin master

<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 2a3de2c8e6dc224edf6c411cb512d5fb7c37da62
git checkout master
git branch mergedBranch
git merge mergedBranch
git push origin mergedBranch
<<<<<<< HEAD

=======
>>>>>>> rebasedBranch
=======
git checkout mergedBranch
git merge mergedBranch
git push origin rebasedBranch

>>>>>>> 9f868c43b743cafaa31aa882a91b091cc12a6493
>>>>>>> 2a3de2c8e6dc224edf6c411cb512d5fb7c37da62
