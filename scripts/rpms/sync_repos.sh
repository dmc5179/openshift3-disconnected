#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Source the environment file with the default settings
source "${SCRIPT_DIR}/../env.sh"

set -x -e

# Create base directory for repo sync
if ! test -d "${LOCATION}/ose3-repos"
then
  mkdir -p "${LOCATION}/ose3-repos"
fi

for repo in "rhel-7-server-rpms" "rhel-7-server-extras-rpms" "rhel-7-server-ose-3.11-rpms" "rhel-7-server-ansible-2.9-rpms"
do
  # Sync packages
  sudo ${PACKAGE_MANAGER} reposync --repoid=${repo} --download-metadata "--download-path=${LOCATION}/ose3-repos"
  # Create tarball
  tar -cf "${LOCATION}/ose3-repos/${repo}.tar" "${LOCATION}/ose3-repos/${repo}"
  # Remove package directory
  sudo rm -rf "${LOCATION}/ose3-repos/${repo}"
done
