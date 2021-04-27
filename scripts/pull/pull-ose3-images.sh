#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Source the environment file with the default settings
source "${SCRIPT_DIR}/../env.sh"

set -x -e

${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-ansible:v3.11
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/apb-base:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/apb-tools:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/automation-broker-apb:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/csi-attacher:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/csi-driver-registrar:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/csi-livenessprobe:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/csi-provisioner:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/grafana:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/kuryr-controller:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/kuryr-cni:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/local-storage-provisioner:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/manila-provisioner:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/mariadb-apb:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/mediawiki:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/mediawiki-apb:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/mysql-apb:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-ansible-service-broker:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-cli:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-cluster-autoscaler:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-cluster-capacity:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-cluster-monitoring-operator:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-console:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-configmap-reloader:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-control-plane:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-deployer:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-descheduler:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-docker-builder:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-docker-registry:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-efs-provisioner:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-egress-dns-proxy:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-egress-http-proxy:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-egress-router:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-haproxy-router:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-hyperkube:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-hypershift:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-keepalived-ipfailover:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-kube-rbac-proxy:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-kube-state-metrics:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-metrics-server:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-node:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-node-problem-detector:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-operator-lifecycle-manager:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-ovn-kubernetes:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-pod:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-prometheus-config-reloader:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-prometheus-operator:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-recycler:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-service-catalog:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-template-service-broker:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-tests:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/ose-web-console:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/postgresql-apb:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/registry-console:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/snapshot-controller:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/openshift3/snapshot-provisioner:${TAG}
${SUDO} ${RUNTIME} pull registry.redhat.io/rhel7/etcd:3.2.28
