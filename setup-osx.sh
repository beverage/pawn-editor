#!/bin/bash

echo "Configuring new dependency folder."
mkdir -p Dependencies/Rimworld
cp ~/Library/Application\ Support/Steam/steamapps/common/RimWorld/RimWorldMac.app/Contents/Resources/Data/Managed/*.dll Dependencies/Rimworld
