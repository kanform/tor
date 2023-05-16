if [ -n "$(which docker)" ]
then
  docker version
else
  echo no docker version was found
  exit -1
fi

docker_repo=kanform
docker_image_name=kanform-tor
tag_version=1.0

docker build --build-arg APP_VERSION=$tag_version \
  -t ${docker_repo}/${docker_image_name}:${tag_version} .

docker push ${docker_repo}/${docker_image_name}:${tag_version}
