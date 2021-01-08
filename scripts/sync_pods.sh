set -e
set -o pipefail

# USAGE: Pass --deployment on CI to ensure
#  no changes to the Podfile.lock were made
# Runs pod install in all directories containing a Podfile

ROOT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../add_to_app" >/dev/null 2>&1 && pwd )"
cd "$ROOT_PATH" || exit

# Sync Flutter pods first
cd flutter_module_using_plugin || exit
  flutter pub get
  cd - || exit
cd "$ROOT_PATH" || exit

cd hello || exit
  flutter pub get
  cd - || exit
cd "$ROOT_PATH" || exit

# Sync iOS pods lasts
cd ios_using_plugin || exit
  gem install bundler
  gem install cocoapods
  flutter precache --force --ios --android --macos

  bundle exec pod install --allow-root --deployment
cd - || exit
