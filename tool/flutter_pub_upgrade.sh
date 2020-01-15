#!/bin/bash

set -e

scriptDirectory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for file in `find "${scriptDirectory}/.." -name pubspec.yaml`
do
    (
        cd `dirname $file`
        echo "Updating `pwd`"
        flutter pub upgrade
    )
done
