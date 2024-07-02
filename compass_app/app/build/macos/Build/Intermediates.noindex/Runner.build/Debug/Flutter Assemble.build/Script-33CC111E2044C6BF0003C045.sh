#!/bin/sh
"$FLUTTER_ROOT"/packages/flutter_tools/bin/macos_assemble.sh && touch Flutter/ephemeral/tripwire
