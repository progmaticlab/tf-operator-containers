#!/bin/bash -e

WORKSPACE=${WORKSPACE:-$HOME/tf-operator-containers}
if [[ ! -d ${HOME}/env ]]; then
  python3 -m venv ${HOME}/env
fi

source ${HOME}/env/bin/activate
pushd $WORKSPACE
bazel run //contrail-provisioner:contrail-provisioner-push-local
bazel run //statusmonitor:contrail-statusmonitor-push-local
popd
