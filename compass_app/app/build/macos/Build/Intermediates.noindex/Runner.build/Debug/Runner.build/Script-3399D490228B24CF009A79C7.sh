#!/bin/sh
echo "$PRODUCT_NAME.app" > "$PROJECT_DIR"/Flutter/ephemeral/.app_filename && "$FLUTTER_ROOT"/packages/flutter_tools/bin/macos_assemble.sh embed

