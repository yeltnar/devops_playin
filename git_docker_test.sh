origin_url=$origin_url
repo_name=$(basename `git rev-parse --show-toplevel`)
branch=master

internal_name=$repo_name+$branch

cd /tmp
git clone $origin_url $internal_name
cd $internal_name
git checkout $branch

#docker kill $internal_name

container_id=$(npm run docker | awk 'END {print}')

docker port $container_id
