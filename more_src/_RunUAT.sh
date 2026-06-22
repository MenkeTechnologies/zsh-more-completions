#compdef RunUAT.sh
# Documentation: https://dev.epicgames.com/documentation/unreal-engine/build-operations-cooking-packaging-deploying-and-running-projects-in-unreal-engine
# Unreal Automation Tool (RunUAT.sh) - BuildCookRun and related commands

local ret=1

_arguments -s -S \
  '-help[show help for the command]' \
  '-project=[the .uproject file to operate on]:project:_files -g "*.uproject"' \
  '-platform=[target platform to build/cook/stage]:platform:(Win64 Mac Linux Android IOS TVOS)' \
  '-targetplatform=[platform to cook and package for]:platform:(Win64 Mac Linux Android IOS TVOS)' \
  '-clientconfig=[client build configuration]:config:(Debug DebugGame Development Test Shipping)' \
  '-serverconfig=[server build configuration]:config:(Debug DebugGame Development Test Shipping)' \
  '-cook[cook content for the target platform]' \
  '-cookonthefly[cook content on the fly during deployment]' \
  '-build[compile the executables for the target platform]' \
  '-stage[stage the cooked content into a packaged format]' \
  '-pak[create pak files during packaging]' \
  '-archive[archive the built package]' \
  '-archivedirectory=[output directory for the archive]:directory:_files -/' \
  '-package[package the project for distribution]' \
  '-deploy[deploy to the target device]' \
  '-run[run the project after building]' \
  '-map=[map to cook]:map:' \
  '-server[build/cook the dedicated server]' \
  '-client[build/cook the client]' \
  '-noclient[do not build the client]' \
  '-nocompile[do not compile UAT]' \
  '-nocompileeditor[do not compile the editor]' \
  '-distribution[build for distribution]' \
  '-prereqs[include prerequisites installer when staging]' \
  '-compressed[use compressed pak files]' \
  '-iterate[iterative cook (only cook changed content)]' \
  '-nop4[do not use Perforce integration]' \
  '-utf8output[use UTF-8 console output]' \
  '*:command:(BuildCookRun BuildGraph BuildPlugin BuildEditor BuildTarget Build Cook Stage Package GenerateProjectFiles)' && ret=0

return ret
