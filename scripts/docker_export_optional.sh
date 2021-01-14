#!/bin/bash
set -x

export OCP_VERSION=v3.11.117
export DOCKER=podman
export LOCATION="/mnt/usb/openshift-disconnected/containers"

sudo ${DOCKER} save -o "${LOCATION}/ose3-optional-imags.tar" \
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
    registry.redhat.io/cloudforms46/cfme-openshift-postgresql:${OCP_VERSION} \
    registry.redhat.io/cloudforms46/cfme-openshift-memcached:${OCP_VERSION} \
    registry.redhat.io/cloudforms46/cfme-openshift-app-ui:${OCP_VERSION} \
    registry.redhat.io/cloudforms46/cfme-openshift-app:${OCP_VERSION} \
    registry.redhat.io/cloudforms46/cfme-openshift-embedded-ansible:${OCP_VERSION} \
    registry.redhat.io/cloudforms46/cfme-openshift-httpd:${OCP_VERSION} \
    registry.redhat.io/cloudforms46/cfme-httpd-configmap-generator:${OCP_VERSION} \
    registry.redhat.io/rhgs3/rhgs-server-rhel7:${OCP_VERSION} \
    registry.redhat.io/rhgs3/rhgs-volmanager-rhel7:${OCP_VERSION} \
    registry.redhat.io/rhgs3/rhgs-gluster-block-prov-rhel7:${OCP_VERSION} \
    registry.redhat.io/rhgs3/rhgs-s3-server-rhel7:${OCP_VERSION}

