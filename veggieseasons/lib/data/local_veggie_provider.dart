// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:veggieseasons/data/veggie.dart';

class LocalVeggieProvider {
  static List<Veggie> veggies = [
    Veggie(
      id: 1,
      name: 'Apples',
      imageAssetPath: 'assets/images/apple.jpg',
      category: VeggieCategory.fruit,
      shortDescription: 'Green or red, they\'re generally round and tasty.',
      accentColor: Color(0x40de8c66),
      seasons: [Season.winter, Season.spring, Season.summer, Season.autumn],
      vitaminAPercentage: 2,
      vitaminCPercentage: 8,
      servingSize: 'One large apple',
      caloriesPerServing: 130,
      trivia: [
        Trivia(
          'A peck of apples (that\'s a real unit of mesaurement!) weighs approximately how many pounds?',
          [
            '10 pounds',
            '20 pounds',
            '30 pounds',
          ],
          0,
        ),
        Trivia(
          'Which of these is an actual variety of apples?',
          [
            'Dancing Turkey',
            'Winter Banana',
            'Red Sloth',
          ],
          1,
        ),
        Trivia(
          'In Greek mythology, Paris gives a golden apple marked "To the Fairest" to a goddess. Which one?',
          [
            'Hera',
            'Athena',
            'Aphrodite',
          ],
          2,
        ),
        Trivia(
          'Apples in the supermarket can be up to how old?',
          [
            '1 week',
            '1 month',
            '1 year',
          ],
          2,
        ),
        Trivia(
          'How long does it take a typical apple tree to produce its first fruit?',
          [
            'One to two years',
            'Four or five years',
            'Eight to ten years',
          ],
          1,
        ),
        Trivia(
          'Archaeological evidence of humans eating apples dates back how far?',
          [
            '500 C.E.',
            '2000 B.C.E.',
            '6500 B.C.E.',
          ],
          2,
        ),
        Trivia(
          'What are the seed pockets inside an apple called?',
          [
            'Tarsals',
            'Carpels',
            'Sacs',
          ],
          1,
        ),
      ],
    ),
    Veggie(
      id: 2,
      name: 'Artichokes',
      imageAssetPath: 'assets/images/artichoke.jpg',
      category: VeggieCategory.flower,
      shortDescription: 'The armadillo of vegetables.',
      accentColor: Color(0x408ea26d),
      seasons: [Season.spring, Season.autumn],
      vitaminAPercentage: 0,
      vitaminCPercentage: 25,
      servingSize: '1 medium artichoke',
      caloriesPerServing: 60,
      trivia: [
        Trivia(
          'Artichokes are which part of the plant?',
          [
            'Flower bud',
            'Root',
            'Seed',
          ],
          0,
        ),
        Trivia(
          '"Jerusalem artichoke" is another term for which vegetable?',
          [
            'Potato',
            'Cabbage',
            'Sunchoke',
          ],
          2,
        ),
        Trivia(
          'Which city claims to be The Artichoke Capital of the World?',
          [
            'Castroville, California',
            'Galveston, Texas',
            'London, England',
          ],
          0,
        ),
        Trivia(
          'Artichokes are technically which type of plant?',
          [
            'Thistle',
            'Azalea',
            'Tulip',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 3,
      name: 'Asparagus',
      imageAssetPath: 'assets/images/asparagus.jpg',
      category: VeggieCategory.fern,
      shortDescription: 'It\'s been used a food and medicine for millenia.',
      accentColor: Color(0x408cb437),
      seasons: [Season.spring],
      vitaminAPercentage: 10,
      vitaminCPercentage: 15,
      servingSize: '5 spears',
      caloriesPerServing: 20,
      trivia: [
        Trivia(
          'The nodules at the tip of an asparagus spear are actually which part of the plant?',
          [
            'Seeds',
            'Leaves',
            'Potective scales',
          ],
          1,
        ),
        Trivia(
          'How is white asparagus made?',
          [
            'It\'s watered with milk',
            'It\'s a different species',
            'It\'s grown in the shade',
          ],
          2,
        ),
        Trivia(
          'Asapragus spears have been observed growing how many inches in a single day?',
          [
            '1',
            '3',
            '6',
          ],
          2,
        ),
        Trivia(
          'To which flower is asparagus related?',
          [
            'Lily',
            'Rose',
            'Whole wheat',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 4,
      name: 'Avocado',
      imageAssetPath: 'assets/images/avocado.jpg',
      category: VeggieCategory.stealthFruit,
      shortDescription: 'One of the oiliest, richest fruits money can buy.',
      accentColor: Color(0x40b0ba59),
      seasons: [Season.winter, Season.spring, Season.summer],
      vitaminAPercentage: 0,
      vitaminCPercentage: 4,
      servingSize: '1/5 medium avocado',
      caloriesPerServing: 50,
      trivia: [
        Trivia(
          'What\'s the most popular variety of avocado?',
          [
            'Stevenson',
            'Hass',
            'Juicy Lucy',
          ],
          1,
        ),
        Trivia(
          'The word avocado derives from "ahuacatl," found in which civilization?',
          [
            'Aztec',
            'Incan',
            'Sumerian',
          ],
          0,
        ),
        Trivia(
          'What percentage of an avocado is nutritional fat?',
          [
            '10',
            '25',
            '50',
          ],
          1,
        ),
        Trivia(
          'The first evidence of avocado consumption by humans dates back to what year?',
          [
            '2,000 B.C.',
            '6,000 B.C.',
            '10,000 B.C.',
          ],
          2,
        ),
      ],
    ),
    Veggie(
      id: 5,
      name: 'Blackberries',
      imageAssetPath: 'assets/images/blackberry.jpg',
      category: VeggieCategory.berry,
      shortDescription: 'Find them on backroads and fences in the Northwest.',
      accentColor: Color(0x409d5adb),
      seasons: [Season.summer],
      vitaminAPercentage: 6,
      vitaminCPercentage: 4,
      servingSize: '1 cup',
      caloriesPerServing: 62,
      trivia: [
        Trivia(
          'What color are unripe blackberries?',
          [
            'Red',
            'White',
            'Brown',
          ],
          0,
        ),
        Trivia(
          'The blackberry is the official fruit of which American state?',
          [
            'Washington',
            'Colorado',
            'Alabama',
          ],
          2,
        ),
        Trivia(
          'How many varieties of blackberries are known to exist?',
          [
            '500',
            '1000',
            '2000',
          ],
          2,
        ),
      ],
    ),
    Veggie(
      id: 6,
      name: 'Cantaloupe',
      imageAssetPath: 'assets/images/cantaloupe.jpg',
      category: VeggieCategory.melon,
      shortDescription: 'A fruit so tasty there\'s a utensil just for it.',
      accentColor: Color(0x40f6bd56),
      seasons: [Season.summer],
      vitaminAPercentage: 120,
      vitaminCPercentage: 80,
      servingSize: '1/4 medium cantaloupe',
      caloriesPerServing: 50,
      trivia: [
        Trivia(
          'Which of these is another name for cantaloupe?',
          [
            'Muskmelon',
            'Crenshaw melon',
            'Rindfruit',
          ],
          0,
        ),
        Trivia(
          'The word "cantaloupe" is a reference to what?',
          [
            'The Latin word for a ring of seeds',
            'The gardens of a castle in Italy',
            'An aphid species that feeds on cantaloupe leaves',
          ],
          1,
        ),
        Trivia(
          'Cantaloupes grow on what kind of plant?',
          [
            'Tree',
            'Shrub',
            'Vine',
          ],
          2,
        ),
        Trivia(
          'The most expensive melons in Japan can sell for up to how much?',
          [
            '\$100',
            '\$1,000',
            '\$10,000',
          ],
          2,
        ),
      ],
    ),
    Veggie(
      id: 7,
      name: 'Cauliflower',
      imageAssetPath: 'assets/images/cauliflower.jpg',
      category: VeggieCategory.cruciferous,
      shortDescription: 'Looks like white broccoli and explodes when cut.',
      accentColor: Color(0x40c891a8),
      seasons: [Season.autumn],
      vitaminAPercentage: 0,
      vitaminCPercentage: 100,
      servingSize: '1/6 medium head',
      caloriesPerServing: 25,
      trivia: [
        Trivia(
          'The quote "Cauliflower is nothing but cabbage with a college education" is attributed to whom?',
          [
            'Cesar Romero',
            'Mark Twain',
            'Lucille Ball',
          ],
          1,
        ),
        Trivia(
          'The edible head of a cauliflower plant is sometimes called what?',
          [
            'The curd',
            'The cow',
            'The cudgel',
          ],
          0,
        ),
        Trivia(
          'Cauliflower is related closest to which of these other plants?',
          [
            'Mustard greens',
            'Apples',
            'Potatoes',
          ],
          0,
        ),
        Trivia(
          'Cauliflower\'s green spiral-shaped cousin is known as what?',
          [
            'Romesco',
            'Brittany cabbage',
            'Muscle sprouts',
          ],
          0,
        ),
        Trivia(
          'Green cauliflower is sometimes called what?',
          [
            'Broccoflower',
            'Avocadoflower',
            'Gross',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 8,
      name: 'Endive',
      imageAssetPath: 'assets/images/endive.jpg',
      category: VeggieCategory.leafy,
      shortDescription: 'It\'s basically the veal of lettuce.',
      accentColor: Color(0x40c5be53),
      seasons: [Season.winter, Season.spring, Season.autumn],
      vitaminAPercentage: 10,
      vitaminCPercentage: 2,
      servingSize: '1/2 cup, chopped',
      caloriesPerServing: 4,
      trivia: [
        Trivia(
          'What\'s another name for Belgian endive?',
          [
            'Radicchio',
            'St. Paul\'s lettuce',
            'Witloof chicory',
          ],
          2,
        ),
        Trivia(
          'How does endive propagate itself?',
          [
            'By seed',
            'By rhizome',
            'By packing up and moving to Des Moines',
          ],
          0,
        ),
        Trivia(
          'Some farmers cover their endive with shade to reduce what?',
          [
            'Size',
            'Toughness',
            'Bitterness',
          ],
          2,
        ),
      ],
    ),
    Veggie(
      id: 9,
      name: 'Figs',
      imageAssetPath: 'assets/images/fig.jpg',
      category: VeggieCategory.fruit,
      shortDescription: 'Delicious when sliced and wrapped in prosciutto.',
      accentColor: Color(0x40aa6d7c),
      seasons: [Season.summer, Season.autumn],
      vitaminAPercentage: 2,
      vitaminCPercentage: 2,
      servingSize: '1 large fig',
      caloriesPerServing: 50,
      trivia: [
        Trivia(
          'Which of these isn\'t a variety of figs?',
          [
            'Brown Turkey',
            'Green Ischia',
            'Red Racer',
          ],
          2,
        ),
        Trivia(
          'A fig\'s natural sugar content is around what?',
          [
            '25%',
            '50%',
            '75%',
          ],
          1,
        ),
        Trivia(
          'How much sun should be used to ripen figs?',
          [
            'Shade',
            'Partial shade',
            'Full sun',
          ],
          2,
        ),
      ],
    ),
    Veggie(
      id: 10,
      name: 'Grapes',
      imageAssetPath: 'assets/images/grape.jpg',
      category: VeggieCategory.berry,
      shortDescription: 'Couldn\'t have wine without them.',
      accentColor: Color(0x40ac708a),
      seasons: [Season.autumn],
      vitaminAPercentage: 0,
      vitaminCPercentage: 2,
      servingSize: '3/4 cup',
      caloriesPerServing: 90,
      trivia: [
        Trivia(
          'How long ago were grapes introduced to the Americas?',
          [
            '100 years',
            '200 years',
            '300 years',
          ],
          2,
        ),
        Trivia(
          'Which of these is not an actual color of grapes?',
          [
            'Pink',
            'Yellow',
            'Brown',
          ],
          2,
        ),
        Trivia(
          'About how many millions of tons of grapes are produced each year?',
          [
            '40',
            '80',
            '120',
          ],
          1,
        ),
        Trivia(
          'There are about how many known varieties of grapes?',
          [
            '2,000',
            '4,000',
            '8,000',
          ],
          2,
        ),
      ],
    ),
    Veggie(
      id: 11,
      name: 'Green Pepper',
      imageAssetPath: 'assets/images/green_bell_pepper.jpg',
      category: VeggieCategory.stealthFruit,
      shortDescription: 'Pleasantly bitter, like a sad movie.',
      accentColor: Color(0x408eb332),
      seasons: [Season.summer],
      vitaminAPercentage: 4,
      vitaminCPercentage: 190,
      servingSize: '1 medium pepper',
      caloriesPerServing: 25,
      trivia: [
        Trivia(
          'What\'s the Australian term for a bell pepper?',
          [
            'Capsicum',
            'Ringer',
            'John Dobbins',
          ],
          0,
        ),
        Trivia(
          'How are green peppers produced?',
          [
            'They\'re picked before ripening',
            'They\'re grown in the shade',
            'They\'re a distinct species',
          ],
          0,
        ),
        Trivia(
          'How quickly can a green pepper grow from seed to harvest?',
          [
            '10 weeks',
            '20 weeks',
            '30 weeks',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 12,
      name: 'Habanero',
      imageAssetPath: 'assets/images/habanero.jpg',
      category: VeggieCategory.stealthFruit,
      shortDescription: 'Delicious... in extremely small quantities.',
      accentColor: Color(0x40ff7a01),
      seasons: [Season.summer, Season.autumn],
      vitaminAPercentage: 9,
      vitaminCPercentage: 100,
      servingSize: '1 pepper',
      caloriesPerServing: 20,
      trivia: [
        Trivia(
          'How high can habaneros rate on the Scoville scale?',
          [
            '200,000 units',
            '600,000 units',
            '1,000,000 units',
          ],
          1,
        ),
        Trivia(
          'Which of these is a pepper known to be hotter than the habanero?',
          [
            'Serrano pepper',
            'Hatch chile',
            'Pepper X',
          ],
          2,
        ),
        Trivia(
          'Which of these isn\'t a variety of habaneros?',
          [
            'White giant',
            'Condor\'s beak',
            'Saucy tyrant',
          ],
          2,
        ),
      ],
    ),
    Veggie(
      id: 13,
      name: 'Kale',
      imageAssetPath: 'assets/images/kale.jpg',
      category: VeggieCategory.cruciferous,
      shortDescription: 'The meanest vegetable. Does not want to be eaten.',
      accentColor: Color(0x40a86bd8),
      seasons: [Season.winter, Season.autumn],
      vitaminAPercentage: 133,
      vitaminCPercentage: 134,
      servingSize: '1 cup, chopped',
      caloriesPerServing: 33,
      trivia: [
        Trivia(
          'Kale is sweeter when harvested after what?',
          [
            'Sundown',
            'The first frost',
            'Reading it a sad story',
          ],
          1,
        ),
        Trivia(
          'Which of these isn\'t a color in which Kale can be found?',
          [
            'Purple',
            'White',
            'Orange',
          ],
          2,
        ),
        Trivia(
          'One serving of kale provides what percentage of a typical person\'s requirement for vitamin K?',
          [
            '100%',
            '300%',
            '900%',
          ],
          2,
        ),
      ],
    ),
    Veggie(
      id: 14,
      name: 'Kiwi',
      imageAssetPath: 'assets/images/kiwi.jpg',
      category: VeggieCategory.berry,
      shortDescription: 'Also known as Chinese gooseberry.',
      accentColor: Color(0x40b47b37),
      seasons: [Season.summer],
      vitaminAPercentage: 2,
      vitaminCPercentage: 240,
      servingSize: '2 medium kiwis',
      caloriesPerServing: 90,
      trivia: [
        Trivia(
          'Europeans sometimes refer to kiwi as what?',
          [
            'Chinese gooseberry',
            'Gem berries',
            'Bulbfruit',
          ],
          0,
        ),
        Trivia(
          'On what type of plant do kiwi grow?',
          [
            'Tree',
            'Shrub',
            'Vine',
          ],
          2,
        ),
        Trivia(
          'Compared to oranges, kiwi typically contain how much vitamin C?',
          [
            'Half as much',
            'About the same',
            'Twice as much',
          ],
          2,
        ),
      ],
    ),
    Veggie(
      id: 15,
      name: 'Lemons',
      imageAssetPath: 'assets/images/lemon.jpg',
      category: VeggieCategory.citrus,
      shortDescription: 'Similar to limes, only yellow.',
      accentColor: Color(0x40e2a500),
      seasons: [Season.winter],
      vitaminAPercentage: 0,
      vitaminCPercentage: 40,
      servingSize: '1 medium lemon',
      caloriesPerServing: 15,
      trivia: [
        Trivia(
          'A lemon tree can produce up to how many pounds of fruit each year?',
          [
            '100',
            '300',
            '600',
          ],
          2,
        ),
        Trivia(
          'Which of these isn\'t a type of lemon?',
          [
            'Acid',
            'Sarcastic',
            'Sweet',
          ],
          1,
        ),
        Trivia(
          'What percent of a typical lemon is composed of juice?',
          [
            '20%',
            '40%',
            '60%',
          ],
          0,
        ),
        Trivia(
          'Which lemon variety is prized for its sweeter-than-averga flavor?',
          [
            'Hookeye',
            'Meyer',
            'Minnesota Stomp',
          ],
          1,
        ),
      ],
    ),
    Veggie(
      id: 16,
      name: 'Limes',
      imageAssetPath: 'assets/images/lime.jpg',
      category: VeggieCategory.citrus,
      shortDescription: 'Couldn\'t have ceviche and margaritas without them.',
      accentColor: Color(0x4089b733),
      seasons: [Season.winter],
      vitaminAPercentage: 0,
      vitaminCPercentage: 35,
      servingSize: '1 medium lime',
      caloriesPerServing: 20,
      trivia: [
        Trivia(
          'Which American state is famous for its Key Lime Pie?',
          [
            'Pennsylvania',
            'Arizona',
            'Florida',
          ],
          2,
        ),
        Trivia(
          'Dried limes are a particularly popular soup ingredient in which part of the world?',
          [
            'Middle East',
            'Africa',
            'Australia',
          ],
          0,
        ),
        Trivia(
          'Sailors once carried limes on their ships to help against which condition?',
          [
            'Influenza',
            'Scurvy',
            'Boredom',
          ],
          1,
        ),
      ],
    ),
    Veggie(
      id: 17,
      name: 'Mangos',
      imageAssetPath: 'assets/images/mango.jpg',
      category: VeggieCategory.tropical,
      shortDescription: 'A fun orange fruit popular with smoothie enthusiasts.',
      accentColor: Color(0x40fcc93c),
      seasons: [Season.summer, Season.autumn],
      vitaminAPercentage: 72,
      vitaminCPercentage: 203,
      servingSize: '1 fruit',
      caloriesPerServing: 201,
      trivia: [
        Trivia(
          'In Mexico, mangos are frequently dusted with what spices before being eaten as a snack?',
          [
            'Black pepper and sugar',
            'Chile pepper and lime juice',
            'Cumin and salt',
          ],
          1,
        ),
        Trivia(
          'To which nut is the mango closely related?',
          [
            'Cashew',
            'Peanut',
            'Walnut',
          ],
          0,
        ),
        Trivia(
          'In which country did mangos originate?',
          [
            'India',
            'Madagascar',
            'Belize',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 18,
      name: 'Mushrooms',
      imageAssetPath: 'assets/images/mushroom.jpg',
      category: VeggieCategory.fungus,
      shortDescription: 'They\'re not truffles, but they\'re still tasty.',
      accentColor: Color(0x40ba754b),
      seasons: [Season.spring, Season.autumn],
      vitaminAPercentage: 0,
      vitaminCPercentage: 2,
      servingSize: '5 medium \'shrooms',
      caloriesPerServing: 20,
      trivia: [
        Trivia(
          'Someone who loves eating mushrooms is called what?',
          [
            'A mycophagist',
            'A philologist',
            'A phlebotomist',
          ],
          0,
        ),
        Trivia(
          'Morel mushrooms are particulary prized by cooks of which style of cuisine?',
          [
            'French',
            'Italian',
            'Japanese',
          ],
          0,
        ),
        Trivia(
          'The largest living organism ever identified is what type of mushroom?',
          [
            'Shiitake mushroom',
            'Honey mushroom',
            'Glory mushroom',
          ],
          1,
        ),
        Trivia(
          'One mushroom cousin is the truffle. Which color truffle is the most prized?',
          [
            'White',
            'Black',
            'Brown',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 19,
      name: 'Nectarines',
      imageAssetPath: 'assets/images/nectarine.jpg',
      category: VeggieCategory.stoneFruit,
      shortDescription: 'Tiny, bald peaches.',
      accentColor: Color(0x40e45b3b),
      seasons: [Season.summer],
      vitaminAPercentage: 8,
      vitaminCPercentage: 15,
      servingSize: '1 medium nectarine',
      caloriesPerServing: 60,
      trivia: [
        Trivia(
          'Nectarines are technically a variety of which other fruit?',
          [
            'Peach',
            'Plum',
            'Cherry',
          ],
          0,
        ),
        Trivia(
          'Nectarines are sometimes called what?',
          [
            'Neckless geese',
            'Giant grapes',
            'Shaved peaches',
          ],
          2,
        ),
        Trivia(
          'Nectarines are thought to have originated in which country?',
          [
            'China',
            'Italy',
            'Ethiopia',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 20,
      name: 'Persimmons',
      imageAssetPath: 'assets/images/persimmon.jpg',
      category: VeggieCategory.fruit,
      shortDescription: 'It\'s like a plum and an apple had a baby together.',
      accentColor: Color(0x40979852),
      seasons: [Season.winter, Season.autumn],
      vitaminAPercentage: 0,
      vitaminCPercentage: 27,
      servingSize: '1 fruit',
      caloriesPerServing: 32,
      trivia: [
        Trivia(
          'What\'s the most commonly grown variety of persimmon?',
          [
            'Sugar',
            'Yellowbird',
            'Kaki',
          ],
          2,
        ),
        Trivia(
          'The word "persimmon" is derived from which language?',
          [
            'Latin',
            'Indo-European',
            'Powhatan',
          ],
          2,
        ),
        Trivia(
          'Which of these is an alternate variety of persimmon?',
          [
            'Black Sapote',
            'Green Troubador',
            'Red Captain',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 21,
      name: 'Plums',
      imageAssetPath: 'assets/images/plum.jpg',
      category: VeggieCategory.stoneFruit,
      shortDescription: 'Popular in fruit salads and children\'s tales.',
      accentColor: Color(0x40e48b47),
      seasons: [Season.summer],
      vitaminAPercentage: 8,
      vitaminCPercentage: 10,
      servingSize: '2 medium plums',
      caloriesPerServing: 70,
      trivia: [
        Trivia(
          'Plums should be handled with care because...?',
          [
            'They\'re particularly sticky',
            'They bruise easily',
            'It\'s easy to hurt their feelings',
          ],
          1,
        ),
        Trivia(
          'A dried plum is known as what?',
          [
            'A prune',
            'An apricot',
            'A raisin',
          ],
          0,
        ),
        Trivia(
          'A sugar plum typically contains how much plum juice?',
          [
            '0%',
            '25%',
            '50%',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 22,
      name: 'Potatoes',
      imageAssetPath: 'assets/images/potato.jpg',
      category: VeggieCategory.tuber,
      shortDescription: 'King of starches and giver of french fries.',
      accentColor: Color(0x40c65c63),
      seasons: [Season.winter, Season.autumn],
      vitaminAPercentage: 0,
      vitaminCPercentage: 45,
      servingSize: '1 medium spud',
      caloriesPerServing: 110,
      trivia: [
        Trivia(
          'Which country consumes the most fried potatoes per capita?',
          [
            'United States',
            'Belgium',
            'Ireland',
          ],
          1,
        ),
        Trivia(
          'Who is credited with introducing French Fries to the United States?',
          [
            'Thomas Jefferson',
            'Betsy Ross',
            'Alexander Hamilton',
          ],
          0,
        ),
        Trivia(
          'The world record for loongest curly fry stands at how many inches?',
          [
            '38',
            '58',
            '78',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 23,
      name: 'Radicchio',
      imageAssetPath: 'assets/images/radicchio.jpg',
      category: VeggieCategory.leafy,
      shortDescription: 'It\'s that bitter taste in the salad you\'re eating.',
      accentColor: Color(0x40d75875),
      seasons: [Season.spring, Season.autumn],
      vitaminAPercentage: 0,
      vitaminCPercentage: 10,
      servingSize: '2 cups shredded',
      caloriesPerServing: 20,
      trivia: [
        Trivia(
          'Radicchio is a particuarly good source of which mineral?',
          [
            'Manganese',
            'Mercury',
            'Molybdenum',
          ],
          0,
        ),
        Trivia(
          'Radicchio should be stored at what temperature?',
          [
            'Room temperature',
            'Refrigerator temperature',
            'Freezer temperature',
          ],
          1,
        ),
        Trivia(
          'What happens to the taste of radicchio once the plant flowers?',
          [
            'It becomes bitter',
            'It becomes sweeter',
            'Nothing. It just looks nicer!',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 24,
      name: 'Radishes',
      imageAssetPath: 'assets/images/radish.jpg',
      category: VeggieCategory.root,
      shortDescription: 'Try roasting them in addition to slicing them up raw.',
      accentColor: Color(0x40819e4e),
      seasons: [Season.spring, Season.autumn],
      vitaminAPercentage: 0,
      vitaminCPercentage: 30,
      servingSize: '7 radishes',
      caloriesPerServing: 10,
      trivia: [
        Trivia(
          'Which ancient civilization is known to have used radish oil?',
          [
            'Egyptian',
            'Sumerian',
            'Incan',
          ],
          0,
        ),
        Trivia(
          'What\'s the name of the radish commonly used in Japanese cuisine?',
          [
            'Daisuki',
            'Daijin',
            'Daikon',
          ],
          2,
        ),
        Trivia(
          'The annual "Night of the Radishes" festival takes place just before Christmas Eve in which country?',
          [
            'Mexico',
            'France',
            'South Korea',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 25,
      name: 'Squash',
      imageAssetPath: 'assets/images/squash.jpg',
      category: VeggieCategory.gourd,
      shortDescription: 'Just slather them in butter and pop \'em in the oven.',
      accentColor: Color(0x40dbb721),
      seasons: [Season.winter, Season.autumn],
      vitaminAPercentage: 297,
      vitaminCPercentage: 48,
      servingSize: '1 cup diced butternut',
      caloriesPerServing: 63,
      trivia: [
        Trivia(
          'Which of these is not a type of squash?',
          [
            'Zucchini',
            'Spaghetti',
            'Martini',
          ],
          2,
        ),
        Trivia(
          'Gourds like squash are also handy as what?',
          [
            'Containers',
            'Furniture',
            'Musical instruments',
          ],
          0,
        ),
        Trivia(
          'Which country is the world\'s largest importer of squashes?',
          [
            'China',
            'United States',
            'Russia',
          ],
          1,
        ),
      ],
    ),
    Veggie(
      id: 26,
      name: 'Strawberries',
      imageAssetPath: 'assets/images/strawberry.jpg',
      category: VeggieCategory.berry,
      shortDescription:
          'A delicious fruit that keeps its seeds on the outside.',
      accentColor: Color(0x40f06a44),
      seasons: [Season.spring, Season.summer],
      vitaminAPercentage: 0,
      vitaminCPercentage: 160,
      servingSize: '8 medium strawberries',
      caloriesPerServing: 50,
      trivia: [
        Trivia(
          'How many seeds are in the average strawberry?',
          [
            '50',
            '100',
            '200',
          ],
          2,
        ),
        Trivia(
          'Strawberries are closely related to which type of flower?',
          [
            'The rose',
            'The daisy',
            'The tulip',
          ],
          0,
        ),
        Trivia(
          'Strawberries are unique among fruit for what reason?',
          [
            'Their seeds are on the outside',
            'Their flowers are striped',
            'Their plants have a taproot',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 27,
      name: 'Tangelo',
      imageAssetPath: 'assets/images/tangelo.jpg',
      category: VeggieCategory.citrus,
      shortDescription: 'No one\'s sure what they are or where they came from.',
      accentColor: Color(0x40f88c06),
      seasons: [Season.winter, Season.autumn],
      vitaminAPercentage: 6,
      vitaminCPercentage: 181,
      servingSize: '1 medium tangelo',
      caloriesPerServing: 60,
      trivia: [
        Trivia(
          'The tangelo is thought to be a cross between oranges and which other fruit?',
          [
            'Peach',
            'Plum',
            'Pummelo',
          ],
          2,
        ),
        Trivia(
          'Which of these is a variety of tangelo?',
          [
            'Orlando',
            'Bluebonnet',
            'Creakey Pete',
          ],
          0,
        ),
        Trivia(
          'A typical tangelo is about what size?',
          [
            'Golf ball',
            'Baseball',
            'Bowling ball',
          ],
          1,
        ),
      ],
    ),
    Veggie(
      id: 28,
      name: 'Tomatoes',
      imageAssetPath: 'assets/images/tomato.jpg',
      category: VeggieCategory.stealthFruit,
      shortDescription: 'A new world food with old world tradition.',
      accentColor: Color(0x40ea3628),
      seasons: [Season.summer],
      vitaminAPercentage: 20,
      vitaminCPercentage: 40,
      servingSize: '1 medium tomato',
      caloriesPerServing: 25,
      trivia: [
        Trivia(
          'French speakers sometimes refer to tomatoes with which name?',
          [
            'Piet de terre',
            'Mille-feuille',
            'Pomme d\'amour',
          ],
          2,
        ),
        Trivia(
          'The largest tomato known to have been grown weighed in at how many pounds?',
          [
            '8',
            '10',
            '12',
          ],
          0,
        ),
        Trivia(
          'Which country is the world\'s largest producer of tomatoes?',
          [
            'China',
            'Italy',
            'Ecuador',
          ],
          0,
        ),
      ],
    ),
    Veggie(
      id: 29,
      name: 'Watermelon',
      imageAssetPath: 'assets/images/watermelon.jpg',
      category: VeggieCategory.melon,
      shortDescription: 'Everyone\'s favorite closing act at the picnic.',
      accentColor: Color(0x40fa8c75),
      seasons: [Season.summer],
      vitaminAPercentage: 30,
      vitaminCPercentage: 25,
      servingSize: '2 cups diced',
      caloriesPerServing: 80,
      trivia: [
        Trivia(
          'How much of a watermelon is water?',
          [
            '50%',
            '75%',
            '90%',
          ],
          2,
        ),
        Trivia(
          'Which nation is famous for growing watermelons in unsual shapes like cubes and hearts?',
          [
            'Armenia',
            'Japan',
            'Saudi Arabia',
          ],
          1,
        ),
        Trivia(
          'Which U.S. state declared the watermelon to be its state vegetable (that\'s right, vegetable)?',
          [
            'Kansas',
            'Iowa',
            'Oklahoma',
          ],
          2,
        ),
        Trivia(
          'Early explorers to the Americas used watermelons as which piece of equipment?',
          [
            'Stools',
            'Pillows',
            'Canteens',
          ],
          2,
        ),
      ],
    ),
    Veggie(
      id: 30,
      name: 'Orange Bell Pepper',
      imageAssetPath: 'assets/images/orange_bell_pepper.jpg',
      category: VeggieCategory.stealthFruit,
      shortDescription: 'Like green pepper, but nicer.',
      accentColor: Color(0x40fd8e00),
      seasons: [Season.summer],
      vitaminAPercentage: 4,
      vitaminCPercentage: 190,
      servingSize: '1 medium pepper',
      caloriesPerServing: 25,
      trivia: [
        Trivia(
          'Which compound (not found in bell peppers) is responsible for many peppers\' spicy taste?',
          [
            'Alum',
            'Capsacin',
            'Calcium',
          ],
          1,
        ),
        Trivia(
          'In comparison to green peppers, how expensive are their orange cousins?',
          [
            'Cheaper',
            'About the same',
            'More expensive',
          ],
          2,
        ),
        Trivia(
          'Who is generally credited with giving bell peppers their peppery name?',
          [
            'Christopher Columbus',
            'Benjamin Franklin',
            'Eleanor Roosevelt',
          ],
          0,
        ),
      ],
    ),
  ];
}
