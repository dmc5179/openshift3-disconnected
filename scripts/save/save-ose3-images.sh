#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Source the environment file with the default settings
source "${SCRIPT_DIR}/../env.sh"

set -x -e

${SUDO} ${RUNTIME} save --multi-image-archive -o "${LOCATION}/ose3-images-${OCP_VERSION}.tar" \
  registry.redhat.io/openshift3/ose-ansible:v3.11 \
  registry.redhat.io/openshift3/apb-base:${OCP_VERSION} \
  registry.redhat.io/openshift3/apb-tools:${OCP_VERSION} \
  registry.redhat.io/openshift3/automation-broker-apb:${OCP_VERSION} \
  registry.redhat.io/openshift3/csi-attacher:${OCP_VERSION} \
  registry.redhat.io/openshift3/csi-driver-registrar:${OCP_VERSION} \
  registry.redhat.io/openshift3/csi-livenessprobe:${OCP_VERSION} \
  registry.redhat.io/openshift3/csi-provisioner:${OCP_VERSION} \
  registry.redhat.io/openshift3/grafana:${OCP_VERSION} \
  registry.redhat.io/openshift3/kuryr-controller:${OCP_VERSION} \
  registry.redhat.io/openshift3/kuryr-cni:${OCP_VERSION} \
  registry.redhat.io/openshift3/local-storage-provisioner:${OCP_VERSION} \
  registry.redhat.io/openshift3/manila-provisioner:${OCP_VERSION} \
  registry.redhat.io/openshift3/mariadb-apb:${OCP_VERSION} \
  registry.redhat.io/openshift3/mediawiki:${OCP_VERSION} \
  registry.redhat.io/openshift3/mediawiki-apb:${OCP_VERSION} \
  registry.redhat.io/openshift3/mysql-apb:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-ansible-service-broker:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-cli:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-cluster-autoscaler:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-cluster-capacity:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-cluster-monitoring-operator:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-console:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-configmap-reloader:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-control-plane:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-deployer:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-descheduler:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-docker-builder:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-docker-registry:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-efs-provisioner:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-egress-dns-proxy:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-egress-http-proxy:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-egress-router:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-haproxy-router:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-hyperkube:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-hypershift:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-keepalived-ipfailover:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-kube-rbac-proxy:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-kube-state-metrics:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-metrics-server:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-node:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-node-problem-detector:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-operator-lifecycle-manager:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-ovn-kubernetes:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-pod:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-prometheus-config-reloader:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-prometheus-operator:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-recycler:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-service-catalog:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-template-service-broker:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-tests:${OCP_VERSION} \
  registry.redhat.io/openshift3/ose-web-console:${OCP_VERSION} \
  registry.redhat.io/openshift3/postgresql-apb:${OCP_VERSION} \
  registry.redhat.io/openshift3/registry-console:${OCP_VERSION} \
  registry.redhat.io/openshift3/snapshot-controller:${OCP_VERSION} \
  registry.redhat.io/openshift3/snapshot-provisioner:${OCP_VERSION} \
  registry.redhat.io/rhel7/etcd:3.2.28
