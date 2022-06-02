docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
docker build --force-rm -t sqlserver-fts:latest .