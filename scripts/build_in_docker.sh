#!/bin/bash
# --user $UID \
docker run  \
    --name build-spdk01 \
    -e "VER=19.03" -e "BUILD_NUMBER=1" \
    -v ~/rpmbuild:/rpmbuild \
    -v `pwd`:/scratch         \
    --rm -i         \
    -t harbor.mellanox.com/swx-storage/`uname -m`/centos75-spdk \
    /scratch/scripts/build_rpm.sh