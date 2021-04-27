#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Source the environment file with the default settings
source "${SCRIPT_DIR}/../env.sh"

set -x -e

${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/metrics-cassandra:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/metrics-hawkular-metrics:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/metrics-hawkular-openshift-agent:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/metrics-heapster:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/metrics-schema-installer:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/oauth-proxy:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/ose-logging-curator5:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/ose-logging-elasticsearch5:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/ose-logging-eventrouter:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/ose-logging-fluentd:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/ose-logging-kibana5:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/prometheus:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/prometheus-alertmanager:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/openshift3/prometheus-node-exporter:${OCP_VERSION}
${SUDO} ${RUNTIME} rmi registry.redhat.io/cloudforms46/cfme-openshift-postgresql
${SUDO} ${RUNTIME} rmi registry.redhat.io/cloudforms46/cfme-openshift-memcached
${SUDO} ${RUNTIME} rmi registry.redhat.io/cloudforms46/cfme-openshift-app-ui
${SUDO} ${RUNTIME} rmi registry.redhat.io/cloudforms46/cfme-openshift-app
${SUDO} ${RUNTIME} rmi registry.redhat.io/cloudforms46/cfme-openshift-embedded-ansible
${SUDO} ${RUNTIME} rmi registry.redhat.io/cloudforms46/cfme-openshift-httpd
${SUDO} ${RUNTIME} rmi registry.redhat.io/cloudforms46/cfme-httpd-configmap-generator
${SUDO} ${RUNTIME} rmi registry.redhat.io/rhgs3/rhgs-server-rhel7
${SUDO} ${RUNTIME} rmi registry.redhat.io/rhgs3/rhgs-volmanager-rhel7
${SUDO} ${RUNTIME} rmi registry.redhat.io/rhgs3/rhgs-gluster-block-prov-rhel7
${SUDO} ${RUNTIME} rmi registry.redhat.io/rhgs3/rhgs-s3-server-rhel7
