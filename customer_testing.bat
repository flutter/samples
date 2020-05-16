cd "animations"
flutter test || exit 1
cd ..

cd "flutter_maps_firestore"
flutter test || exit 1
cd ..

cd "infinite_list"
flutter test || exit 1
cd ..

cd "isolate_example"
flutter test || exit 1
cd ..

cd "jsonexample"
flutter test || exit 1
cd ..

cd "place_tracker"
flutter test || exit 1
cd ..

cd "platform_design"
flutter test || exit 1
cd ..

cd "platform_view_swift"
flutter test || exit 1
cd ..

cd "provider_counter"
flutter test || exit 1
cd ..

cd "provider_shopper"
flutter test || exit 1
cd ..

cd "shrine"
flutter test || exit 1
cd ..

cd "veggieseasons"
flutter test || exit 1
cd ..
