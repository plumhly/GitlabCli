# !/bin/bash

npm install https://github.com/plumhly/gitlab-cli.git -g;

path=`pwd`;
path="$path/shell";
echo "export PATH=\"${path}:\$PATH\"" >> ~/.bash_profile;
echo "export PATH=\"\$PATH:.\"" >> ~/.bash_profile;

for item in `ls $path`; do
  filename=${item%%.*};
  echo "alias $filename=$item" >> ~/.bash_profile;
done


source ~/.bash_profile;
source ~/.zshrc
chmod u+x $path/*.sh;