#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u user -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG user/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push user/$IMAGE:$BUILD_TAG
