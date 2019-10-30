origin_url=$(git config --get remote.origin.url)
repo_name=$(basename `git rev-parse --show-toplevel`)
branch=master

/Users/Drew/playin/devops/clone_build_run.sh $origin_url $repo_name $branch
