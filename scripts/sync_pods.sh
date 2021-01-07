set -e
set -o pipefail

# USAGE: Pass --deployment on CI to ensure
#  no changes to the Podfile.lock were made
# Runs pod install in all directories containing a Podfile

ROOT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../add_to_app" >/dev/null 2>&1 && pwd )"
cd "$ROOT_PATH" || exit

# Sync Flutter pods first
cd flutter_module_using_plugin || exit
  for dir in $(find . -name pubspec.yaml -exec dirname {} \;);
  do
    cd "$dir" || exit
    flutter pub get
    cd - || exit
  done
cd "$ROOT_PATH" || exit

cd hello || exit
  for dir in $(find . -name pubspec.yaml -exec dirname {} \;);
  do
    cd "$dir" || exit
    flutter pub get
    cd - || exit
  done
cd "$ROOT_PATH" || exit

# Sync iOS pods lasts
cd ios_using_plugin || exit
bundle check || bundle install
bundle exec pod install $@
cd - || exit
