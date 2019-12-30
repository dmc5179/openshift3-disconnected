#!/bin/bash
set -x
set -e

OCP_VERSION=v3.11.117
DOCKER=podman
SUDO=sudo

${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/metrics-cassandra:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/metrics-hawkular-metrics:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/metrics-hawkular-openshift-agent:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/metrics-heapster:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/metrics-schema-installer:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/oauth-proxy:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/ose-logging-curator5:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/ose-logging-elasticsearch5:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/ose-logging-eventrouter:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/ose-logging-fluentd:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/ose-logging-kibana5:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/prometheus:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/prometheus-alertmanager:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/openshift3/prometheus-node-exporter:${OCP_VERSION}
${SUDO} ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-openshift-postgresql
${SUDO} ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-openshift-memcached
${SUDO} ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-openshift-app-ui
${SUDO} ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-openshift-app
${SUDO} ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-openshift-embedded-ansible
${SUDO} ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-openshift-httpd
${SUDO} ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-httpd-configmap-generator
${SUDO} ${DOCKER} pull registry.redhat.io/rhgs3/rhgs-server-rhel7
${SUDO} ${DOCKER} pull registry.redhat.io/rhgs3/rhgs-volmanager-rhel7
${SUDO} ${DOCKER} pull registry.redhat.io/rhgs3/rhgs-gluster-block-prov-rhel7
${SUDO} ${DOCKER} pull registry.redhat.io/rhgs3/rhgs-s3-server-rhel7


