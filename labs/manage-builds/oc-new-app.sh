#!/bin/bash

source /usr/local/etc/ocp4.config

oc new-app --name jhost \
    --build-env MAVEN_MIRROR_URL=http://${RHT_OCP4_NEXUS_SERVER}/repository/java \
    -i redhat-openjdk18-openshift:1.5 \
    https://github.com/${RHT_OCP4_GITHUB_USER}/DO288-apps#manage-builds \
    --context-dir java-serverhost

