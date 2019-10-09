origin_url=$(git config --get remote.origin.url)
repo_name=$(basename `git rev-parse --show-toplevel`)
branch=master

folder=$repo_name+$branch

cd /tmp
git clone $origin_url $folder
cd $folder
git checkout $branch

