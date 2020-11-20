#!/bin/bash

sudo yum install -y dnf

# bazel install
 sudo dnf install -y dnf-plugins-core
 sudo dnf copr enable -y vbatts/bazel
 sudo dnf install -y bazel3
