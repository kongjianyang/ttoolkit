#!bin/bash


echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"


# Initiate this project and push to github
# echo "# ttoolkit" >> README.md
# git init
# git add README.md
# git commit -m "first commit"
# git branch -M main
# git remote add origin git@github.com:kongjianyang/ttoolkit.git
# git push -u origin main


echo "Files more than 30M should be ignored"
find ./* -size +30M
find ./* -size +30M | cat >> .gitignore

git add .
update_time="updating site on $(date)" # 不能有空格
read -p  "请输入commit信息：" -t 30 commit_msg #等待30秒
echo $commit_msg
msg="$update_time; $commit_msg"

git commit -m "$msg"

git push origin main