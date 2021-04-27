#!/bin/bash
set -x
set -e

export OCP_VERSION=v3.11.117
export DOCKER=podman
export REGISTRY=registry.example.com

sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-ansible:v3.11
sudo ${DOCKER} push ${REGISTRY}/openshift3/apb-base:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/apb-tools:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/automation-broker-apb:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/csi-attacher:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/csi-driver-registrar:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/csi-livenessprobe:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/csi-provisioner:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/grafana:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/local-storage-provisioner:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/manila-provisioner:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/mariadb-apb:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/mediawiki:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/mediawiki-apb:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/mysql-apb:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-ansible-service-broker:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-cli:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-cluster-autoscaler:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-cluster-capacity:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-cluster-monitoring-operator:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-console:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-configmap-reloader:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-control-plane:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-deployer:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-descheduler:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-docker-builder:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-docker-registry:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-efs-provisioner:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-egress-dns-proxy:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-egress-http-proxy:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-egress-router:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-haproxy-router:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-hyperkube:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-hypershift:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-keepalived-ipfailover:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-kube-rbac-proxy:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-kube-state-metrics:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-metrics-server:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-node:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-node-problem-detector:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-operator-lifecycle-manager:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-ovn-kubernetes:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-pod:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-prometheus-config-reloader:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-prometheus-operator:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-recycler:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-service-catalog:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-template-service-broker:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-tests:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/ose-web-console:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/postgresql-apb:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/registry-console:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/snapshot-controller:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/openshift3/snapshot-provisioner:${OCP_VERSION}
sudo ${DOCKER} push ${REGISTRY}/rhel7/etcd:3.2.22
