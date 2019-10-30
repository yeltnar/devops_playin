origin_url=$1

if [ -z $origin_url ]
then
    echo "\$origin_url is not set (param1)"
    exit 
fi

repo_name=$2

if [ -z $repo_name ]
then
    echo "\$repo_name is not set (param2)"
    exit 
fi

branch=$3

if [ -z $branch ]
then
    echo "\$branch is not set (param3)"
    exit 
fi

internal_name=$repo_name+$branch

cd /tmp
git clone $origin_url $internal_name
cd $internal_name
git checkout $branch

#docker kill $internal_name

container_id=$(npm run docker | awk 'END {print}')

docker port $container_id
