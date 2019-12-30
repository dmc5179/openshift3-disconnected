#!/bin/bash
set -x

OCP_VERSION=v3.11.117
DOCKER=podman
SUDO=sudo
LOCATION="/mnt/usb/openshift-disconnected/containers"

${SUDO} ${DOCKER} save -o "${LOCATION}/ose3-builder-images.tar" \
    registry.redhat.io/jboss-webserver-3/webserver31-tomcat7-openshift:${OCP_VERSION} \
    registry.redhat.io/jboss-webserver-3/webserver31-tomcat8-openshift:${OCP_VERSION} \
    registry.redhat.io/openshift3/jenkins-2-rhel7:${OCP_VERSION} \
    registry.redhat.io/openshift3/jenkins-agent-maven-35-rhel7:${OCP_VERSION} \
    registry.redhat.io/openshift3/jenkins-agent-nodejs-8-rhel7:${OCP_VERSION} \
    registry.redhat.io/openshift3/jenkins-slave-base-rhel7:${OCP_VERSION} \
    registry.redhat.io/openshift3/jenkins-slave-maven-rhel7:${OCP_VERSION} \
    registry.redhat.io/openshift3/jenkins-slave-nodejs-rhel7:${OCP_VERSION}

