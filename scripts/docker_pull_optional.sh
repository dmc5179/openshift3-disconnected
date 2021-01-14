#!/bin/bash
set -x
set -e

export OCP_VERSION=v3.11.117
export DOCKER=podman

sudo ${DOCKER} pull registry.redhat.io/openshift3/metrics-cassandra:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/openshift3/metrics-hawkular-metrics:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/openshift3/metrics-hawkular-openshift-agent:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/openshift3/metrics-heapster:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/openshift3/metrics-schema-installer:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/openshift3/oauth-proxy:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/openshift3/ose-logging-curator5:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/openshift3/ose-logging-elasticsearch5:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/openshift3/ose-logging-eventrouter:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/openshift3/ose-logging-fluentd:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/openshift3/ose-logging-kibana5:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/openshift3/prometheus:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/openshift3/prometheus-alertmanager:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/openshift3/prometheus-node-exporter:${OCP_VERSION}
sudo ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-openshift-postgresql
sudo ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-openshift-memcached
sudo ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-openshift-app-ui
sudo ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-openshift-app
sudo ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-openshift-embedded-ansible
sudo ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-openshift-httpd
sudo ${DOCKER} pull registry.redhat.io/cloudforms46/cfme-httpd-configmap-generator
sudo ${DOCKER} pull registry.redhat.io/rhgs3/rhgs-server-rhel7
sudo ${DOCKER} pull registry.redhat.io/rhgs3/rhgs-volmanager-rhel7
sudo ${DOCKER} pull registry.redhat.io/rhgs3/rhgs-gluster-block-prov-rhel7
sudo ${DOCKER} pull registry.redhat.io/rhgs3/rhgs-s3-server-rhel7


