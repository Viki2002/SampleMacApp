#!/bin/bash
echo "Running after install script"
# Set proper permissions
chmod -R 755 /Applications/SampleMacApp
# Register the app with Launch Services
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -f /Applications/SampleMacApp/SampleMacApp.app
