#!/bin/sh
github_repo="$1"
dockerhub_repo="$2"

git clone https://github.com/"$github_repo" "$github_repo"
docker build "$github_repo" -t "$dockerhub_repo"
docker push "$dockerhub_repo"
