#!/bin/bash

echo "Configuring new dependency folder."
mkdir -p Dependencies/Rimworld
cp ~/Library/Application\ Support/Steam/steamapps/common/RimWorld/RimWorldMac.app/Contents/Resources/Data/Managed/*.dll Dependencies/Rimworld

echo "Fetching Gradient Hair."
wget -P Dependencies/GradientHair https://github.com/AUTOMATIC1111/GradientHair/raw/master/1.5/Assemblies/GradientHair.dll
