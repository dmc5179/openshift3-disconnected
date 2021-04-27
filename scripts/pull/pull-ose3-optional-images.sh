#!/bin/bash -xe
 
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Source the environment file with the default settings
source "${SCRIPT_DIR}/../env.sh"

set -x -e

${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/metrics-cassandra:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/metrics-hawkular-metrics:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/metrics-hawkular-openshift-agent:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/metrics-heapster:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/metrics-schema-installer:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/oauth-proxy:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-logging-curator5:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-logging-elasticsearch5:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-logging-eventrouter:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-logging-fluentd:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-logging-kibana5:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/prometheus:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/prometheus-alertmanager:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/prometheus-node-exporter:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/cloudforms46/cfme-openshift-postgresql
${SUDO} ${RUNTIME} pull registry.redhat.io/cloudforms46/cfme-openshift-memcached
${SUDO} ${RUNTIME} pull registry.redhat.io/cloudforms46/cfme-openshift-app-ui
${SUDO} ${RUNTIME} pull registry.redhat.io/cloudforms46/cfme-openshift-app
${SUDO} ${RUNTIME} pull registry.redhat.io/cloudforms46/cfme-openshift-embedded-ansible
${SUDO} ${RUNTIME} pull registry.redhat.io/cloudforms46/cfme-openshift-httpd
${SUDO} ${RUNTIME} pull registry.redhat.io/cloudforms46/cfme-httpd-configmap-generator
${SUDO} ${RUNTIME} pull registry.redhat.io/rhgs3/rhgs-server-rhel7
${SUDO} ${RUNTIME} pull registry.redhat.io/rhgs3/rhgs-volmanager-rhel7
${SUDO} ${RUNTIME} pull registry.redhat.io/rhgs3/rhgs-gluster-block-prov-rhel7
${SUDO} ${RUNTIME} pull registry.redhat.io/rhgs3/rhgs-s3-server-rhel7
