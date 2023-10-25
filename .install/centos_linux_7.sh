#!/bin/bash
MODE=$1 # whether to install using sudo or not
set -e
export DEBIAN_FRONTEND=noninteractive
ARCH=$(uname -m)
$MODE yum install -y https://packages.endpointdev.com/rhel/7/os/${ARCH}/endpoint-repo.${ARCH}.rpm
$MODE yum groupinstall -y "Development Tools"
$MODE yum install -y wget git
source install_cmake.sh $MODE
