#!/bin/bash
echo "Running before install script"
# Remove previous version if exists
if [ -d "/Applications/SampleMacApp" ]; then
  rm -rf "/Applications/SampleMacApp"
fi
