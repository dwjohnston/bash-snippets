
#Find which packages have been modified. 

export MODIFIED_PACKAGES=`git show --name-only $COMMIT_ID | awk -F'/' 'NF!=1{print $1}' | sort -u`
#This regex matches 'backend foo bar biz' and not 'foo-backend foo bar biz'. 
if[[ $MODIFIED_PACKAGES =~ .*(\s|^)backend\s* ]]
then 
echo hello world!
fi 
