#! /bin/bash

set -e

echo "Building docker container"
docker build -t docproject_fabricmc_fabric_build .

echo "Building docs"
mkdir -p gen
docker run -v "$PWD"/gen:/source/fabric docproject_fabricmc_fabric_build bash /source/build.sh