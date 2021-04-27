#!/bin/bash
set -x
set -e

export OCP_VERSION=v3.11.117
export DOCKER=podman

sudo ${DOCKER} tag registry.redhat.io/jboss-amq-6/amq63-openshift:1.4

#!!!! These don't even exist
#sudo ${DOCKER} tag registry.redhat.io/jboss-datagrid-7/datagrid71-openshift:${OCP_VERSION}
#sudo ${DOCKER} tag registry.redhat.io/jboss-datagrid-7/datagrid71-client-openshift:${OCP_VERSION}
sudo ${DOCKER} tag registry.redhat.io/jboss-datagrid-7/datagrid73-openshift:1.0

# These are wrong, 63 never tested for OCP 3.11
#sudo ${DOCKER} tag registry.redhat.io/jboss-datavirt-6/datavirt63-openshift:${OCP_VERSION}
#sudo ${DOCKER} tag registry.redhat.io/jboss-datavirt-6/datavirt63-driver-openshift:${OCP_VERSION}

sudo ${DOCKER} tag registry.redhat.io/jboss-datavirt-6/datavirt64-openshift:1.3
sudo ${DOCKER} tag registry.redhat.io/jboss-datavirt-6/datavirt64-driver-openshift:1.3
sudo ${DOCKER} tag registry.redhat.io/jboss-decisionserver-6/decisionserver64-openshift:1.3
sudo ${DOCKER} tag registry.redhat.io/jboss-processserver-6/processserver64-openshift:1.3
sudo ${DOCKER} tag registry.redhat.io/jboss-eap-6/eap64-openshift:1.8
sudo ${DOCKER} tag registry.redhat.io/jboss-eap-7/eap71-openshift:1.3

#sudo ${DOCKER} tag registry.redhat.io/jboss-webserver-3/webserver31-tomcat7-openshift:${OCP_VERSION}
#sudo ${DOCKER} tag registry.redhat.io/jboss-webserver-3/webserver31-tomcat8-openshift:${OCP_VERSION}

# This isn't listed right in the support tables
sudo ${DOCKER} tag registry.redhat.io/openshift3/jenkins-2-rhel7:1.0-3

sudo ${DOCKER} tag registry.redhat.io/openshift3/jenkins-agent-maven-35-rhel7:3.11
sudo ${DOCKER} tag registry.redhat.io/openshift3/jenkins-agent-nodejs-8-rhel7:3.11
sudo ${DOCKER} tag registry.redhat.io/openshift3/jenkins-slave-base-rhel7:3.11
sudo ${DOCKER} tag registry.redhat.io/openshift3/jenkins-slave-maven-rhel7:3.11
sudo ${DOCKER} tag registry.redhat.io/openshift3/jenkins-slave-nodejs-rhel7:3.11
sudo ${DOCKER} tag registry.redhat.io/rhscl/mongodb-32-rhel7:3.2-27
sudo ${DOCKER} tag registry.redhat.io/rhscl/mysql-57-rhel7:5.7-24
sudo ${DOCKER} tag registry.redhat.io/rhscl/perl-524-rhel7:5.24-26

# PHP 56 has no supported version for OCP 3.11
#sudo ${DOCKER} tag registry.redhat.io/rhscl/php-56-rhel7:${OCP_VERSION}

sudo ${DOCKER} tag registry.redhat.io/rhscl/php-70-rhel7:7.0-26
sudo ${DOCKER} tag registry.redhat.io/rhscl/postgresql-95-rhel7:9.5-29
sudo ${DOCKER} tag registry.redhat.io/rhscl/python-35-rhel7:3.5-39

# There is no supported version of sso 7.0 for OCP 3.11
#sudo ${DOCKER} tag registry.redhat.io/redhat-sso-7/sso70-openshift:

sudo ${DOCKER} tag registry.redhat.io/redhat-sso-7/sso72-openshift:1.4
sudo ${DOCKER} tag registry.redhat.io/redhat-sso-7/sso73-openshift:1.0
sudo ${DOCKER} tag registry.redhat.io/rhscl/ruby-24-rhel7:2.4-22
sudo ${DOCKER} tag registry.redhat.io/redhat-openjdk-18/openjdk18-openshift:1.0-3

# There is no supported version of sso 7.1 for OCP 3.11
#sudo ${DOCKER} tag registry.redhat.io/redhat-sso-7/sso71-openshift:

sudo ${DOCKER} tag registry.redhat.io/rhscl/nodejs-6-rhel7:6-35
sudo ${DOCKER} tag registry.redhat.io/rhscl/mariadb-101-rhel7:10.1-36

