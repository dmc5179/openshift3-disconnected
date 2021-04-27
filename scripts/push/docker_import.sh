#!/bin/bash

export DOCKER=podman

${DOCKER} load -i ose3-images.tar
${DOCKER} load -i ose3-builder-images.tar
${DOCKER} load -i ose3-optional-images.tar
