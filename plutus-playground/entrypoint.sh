#!/bin/bash
set -e

# Start plutus playground client
echo "Setting up plutus playground server..."
cd /opt/plutus/plutus-playground-client
sed -i -e 's/localhost:8080/server:8080/g' default.nix 
sed -i -e 's/localhost:8080/server:8080/g' webpack.config.js
sed -i -e 's/--progress/--progress --host=0.0.0.0/g' package.json
