#! /bin/bash

set -e

echo "Pulling in sources"
git clone https://github.com/FabricMC/fabric
cd fabric

echo "Building javadoc"
./gradlew javadoc --console=plain

echo "Done."