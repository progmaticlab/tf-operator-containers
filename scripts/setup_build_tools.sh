#!/bin/bash -e

sudo yum install -y python3 dnf patch gcc gcc-c++ 

# bazel install
 sudo dnf install -y dnf-plugins-core
 sudo dnf copr enable -y vbatts/bazel
 sudo dnf install -y bazel3
