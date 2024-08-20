#!/bin/bash

dotnet build Source/PawnEditor
cp Assemblies/PawnEditor.dll ~/Library/Application\ Support/Steam/steamapps/common/RimWorld/RimWorldMac.app/Mods/pawn-editor/Assemblies/
cp Assemblies/PawnEditor.pdb ~/Library/Application\ Support/Steam/steamapps/common/RimWorld/RimWorldMac.app/Mods/pawn-editor/Assemblies/
