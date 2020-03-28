import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'place.dart';

class StubData {
  static const List<Place> places = [
    Place(
      id: '1',
      latLng: LatLng(45.524676, -122.681922),
      name: 'Deschutes Brewery',
      description:
          'Beers brewed on-site & gourmet pub grub in a converted auto-body shop with a fireplace & wood beams.',
      category: PlaceCategory.favorite,
      starRating: 5,
    ),
    Place(
      id: '2',
      latLng: LatLng(45.516887, -122.675417),
      name: 'Luc Lac Vietnamese Kitchen',
      description:
          'Popular counter-serve offering pho, banh mi & other Vietnamese favorites in a stylish setting.',
      category: PlaceCategory.favorite,
      starRating: 5,
    ),
    Place(
      id: '3',
      latLng: LatLng(45.528952, -122.698344),
      name: 'Salt & Straw',
      description:
          'Quirky flavors & handmade waffle cones draw crowds to this artisinal ice cream maker\'s 3 parlors.',
      category: PlaceCategory.favorite,
      starRating: 5,
    ),
    Place(
      id: '4',
      latLng: LatLng(45.525253, -122.684423),
      name: 'TILT',
      description:
          'This stylish American eatery offers unfussy breakfast fare, cocktails & burgers in industrial-themed digs.',
      category: PlaceCategory.favorite,
      starRating: 4,
    ),
    Place(
      id: '5',
      latLng: LatLng(45.513485, -122.657982),
      name: 'White Owl Social Club',
      description:
          'Chill haunt with local beers, burgers & vegan eats, plus live music & an airy patio with a fire pit.',
      category: PlaceCategory.favorite,
      starRating: 4,
    ),
    Place(
      id: '6',
      latLng: LatLng(45.487137, -122.799940),
      name: 'Buffalo Wild Wings',
      description:
          'Lively sports-bar chain dishing up wings & other American pub grub amid lots of large-screen TVs.',
      category: PlaceCategory.visited,
      starRating: 5,
    ),
    Place(
      id: '7',
      latLng: LatLng(45.416986, -122.743171),
      name: 'Chevys',
      description:
          'Lively, informal Mexican chain with a colorful, family-friendly setting plus tequilas & margaritas.',
      category: PlaceCategory.visited,
      starRating: 4,
    ),
    Place(
      id: '8',
      latLng: LatLng(45.430489, -122.831802),
      name: 'Cinetopia',
      description:
          'Moviegoers can take food from the on-site eatery to their seats, with table service in 21+ theaters.',
      category: PlaceCategory.visited,
      starRating: 4,
    ),
    Place(
      id: '9',
      latLng: LatLng(45.383030, -122.758372),
      name: 'Thai Cuisine',
      description:
          'Informal restaurant offering Thai standards in a modest setting, plus takeout & delivery.',
      category: PlaceCategory.visited,
      starRating: 4,
    ),
    Place(
      id: '10',
      latLng: LatLng(45.493321, -122.669330),
      name: 'The Old Spaghetti Factory',
      description:
          'Family-friendly chain eatery featuring traditional Italian entrees amid turn-of-the-century decor.',
      category: PlaceCategory.visited,
      starRating: 4,
    ),
    Place(
      id: '11',
      latLng: LatLng(45.548606, -122.675286),
      name: 'Mississippi Pizza',
      description:
          'Music, trivia & other all-ages events featured at pizzeria with lounge & vegan & gluten-free pies.',
      category: PlaceCategory.wantToGo,
      starRating: 4,
    ),
    Place(
      id: '12',
      latLng: LatLng(45.420226, -122.740347),
      name: 'Oswego Grill',
      description:
          'Wood-grilled steakhouse favorites served in a casual, romantic restaurant with a popular happy hour.',
      category: PlaceCategory.wantToGo,
      starRating: 4,
    ),
    Place(
      id: '13',
      latLng: LatLng(45.541202, -122.676432),
      name: 'The Widmer Brothers Brewery',
      description:
          'Popular, enduring gastropub serving craft beers, sandwiches & eclectic entrees in a laid-back space.',
      category: PlaceCategory.wantToGo,
      starRating: 4,
    ),
    Place(
      id: '14',
      latLng: LatLng(45.559783, -122.924103),
      name: 'TopGolf',
      description:
          'Sprawling entertainment venue with a high-tech driving range & swanky lounge with drinks & games.',
      category: PlaceCategory.wantToGo,
      starRating: 5,
    ),
    Place(
      id: '15',
      latLng: LatLng(45.485612, -122.784733),
      name: 'Uwajimaya Beaverton',
      description:
          'Huge Asian grocery outpost stocking meats, produce & prepared foods plus gifts & home goods.',
      category: PlaceCategory.wantToGo,
      starRating: 5,
    ),
  ];

  static const List<String> reviewStrings = [
    'My favorite place in Portland. The employees are wonderful and so is the food. I go here at least once a month!',
    'Staff was very friendly. Great atmosphere and good music. Would reccommend.',
    'Best. Place. In. Town. Period.'
  ];
}
