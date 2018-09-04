#!/bin/bash
# Delete all Homework Projects
if [ "$#" -ne 2 ]; then
    echo "Usage:"
    echo "  $0 GUID USER"
    exit 1
fi

GUID=$1
USER=$2

echo "Removing all Homework Projects for GUID=$GUID"
oc login https://master.na39.openshift.opentlc.com -u ${USER} -p securityPolicy@1234

oc delete project $GUID-nexus
oc delete project $GUID-sonarqube
oc delete project $GUID-jenkins
oc delete project $GUID-parks-dev
oc delete project $GUID-parks-prod
