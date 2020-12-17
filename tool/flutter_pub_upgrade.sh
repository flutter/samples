#!/bin/bash

set -e

scriptDirectory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# It seems federated_plugin_* isn't happy to run flutter pub upgrade
for dir in `find "${scriptDirectory}/.." -name pubspec.yaml -exec dirname {} \; | grep -v federated_plugin | grep -v experimental | sort`
do
    (
        cd $dir
        echo "Updating `pwd`"
        flutter pub upgrade
        flutter pub outdated
    )
done
