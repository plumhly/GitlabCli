# !/bin/bash

path=`pwd` 
while [[ ! -d ".git" ]]
do
	cd ..
	if [[ `pwd` == '/' ]]
	then
		echo 'not find git dir'
		cd ${path}
		return
	fi
done

feature="2.0.0"
user_branch="dev_2.0_lb"

git checkout $feature
git pull origin

git checkout $user_branch
git pull origin

git merge $feature

