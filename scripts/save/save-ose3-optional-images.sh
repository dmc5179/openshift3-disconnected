#!/bin/bash -xe
  
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Source the environment file with the default settings
source "${SCRIPT_DIR}/../env.sh"

set -x -e

${SUDO} ${RUNTIME} save --multi-image-archive -o "${LOCATION}/ose3-optional-imags-${OCP_VERSION}.tar" \
  registry.redhat.io/openshift3/metrics-cassandra:${OCP_VERSION} \
  registry.redhat.io/openshift3/metrics-hawkular-metrics:${OCP_VERSION} \
  registry.redhat.io/openshift3/metrics-hawkular-openshift-agent:${OCP_VERSION} \
  registry.redhat.io/openshift3/metrics-heapster:${OCP_VERSION} \
  registry.redhat.io/openshift3/metrics-schema-installer:${OCP_VERSION} \
  registry.redhat.io/openshift3/oauth-proxy:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-logging-curator5:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-logging-elasticsearch5:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-logging-eventrouter:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-logging-fluentd:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-logging-kibana5:${OCP_VERSION} \
  registry.redhat.io/openshift3/prometheus:${OCP_VERSION} \
  registry.redhat.io/openshift3/prometheus-alertmanager:${OCP_VERSION} \
  registry.redhat.io/openshift3/prometheus-node-exporter:${OCP_VERSION} \
  registry.redhat.io/cloudforms46/cfme-openshift-postgresql \
  registry.redhat.io/cloudforms46/cfme-openshift-memcached \
  registry.redhat.io/cloudforms46/cfme-openshift-app-ui \
  registry.redhat.io/cloudforms46/cfme-openshift-app \
  registry.redhat.io/cloudforms46/cfme-openshift-embedded-ansible \
  registry.redhat.io/cloudforms46/cfme-openshift-httpd \
  registry.redhat.io/cloudforms46/cfme-httpd-configmap-generator \
  registry.redhat.io/rhgs3/rhgs-server-rhel7 \
  registry.redhat.io/rhgs3/rhgs-volmanager-rhel7 \
  registry.redhat.io/rhgs3/rhgs-gluster-block-prov-rhel7 \
  registry.redhat.io/rhgs3/rhgs-s3-server-rhel7 \
