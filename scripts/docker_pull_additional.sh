#!/bin/bash

set -x

export OCP_VERSION=v3.11.117
export DOCKER=podman

sudo ${DOCKER} pull registry.redhat.io/openshift3/ose-efs-provisioner:${OCP_VERSION}


