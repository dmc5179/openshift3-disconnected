
# Version of OpenShift 3 to pull. Must include the v
OCP_VERSION=v3.11.420

# podman or docker
RUNTIME=podman

# If sudo is NOT required, set this field to empty
SUDO=

# Directory to save OpenShift 3 image archives
LOCATION="/opt/openshift/ocp-${OCP_VERSION}"

PACKAGE_MANAGER="dnf"
