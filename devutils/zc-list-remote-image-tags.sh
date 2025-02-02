#!/bin/bash
source $HOME/zcmd/devutils/default-docker-env.txt
IMAGENAME=$1
if [ -z "$IMAGENAME" ]; then
    echo "ERROR: Missing required IMAGENAME argument"
    exit 2
fi
echo "Listing tags of ${IMAGENAME} from our private Docker Registry ..."
CMD="curl -4 ${PRIVATE_DOCKER_FULL_REGISTRY_URL}/v2/${IMAGENAME}/tags/list --insecure"
echo $CMD
eval $CMD
echo


