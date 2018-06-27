// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

abstract class JsonStrings {
  static final String listOfInts = '[1, 2, 3]';

  static final String listOfDoubles = '[1.0, 2.0, 3.0]';

  static final String listOfStrings = '["one", "two", "three"]';

  static final String listOfDynamics = '[1, "two", 3.0]';

  static final String mapOfDynamics = '''
  {
    "anInt": 1,
    "aString": "Blah, blah, blah.",
    "aDouble": 1.0
  }''';

  static final String listOfSimpleObjects = '''
  [
    {
      "aString": "Blah, blah, blah.",
      "anInt": 1,
      "aDouble": 1.0,
      "aListOfStrings": ["one", "two", "three"],
      "aListOfInts": [1, 2, 3],
      "aListOfDoubles": [1.0, 2.0, 3.0]
    },
    {
      "anInt": 1,
      "aDouble": 1.0,
      "aListOfStrings": ["one", "two", "three"],
      "aListOfInts": [1, 2, 3],
      "aListOfDoubles": [1.0, 2.0, 3.0]
    },
    {
      "aString": "Blah, blah, blah.",
      "aDouble": 1.0,
      "aListOfStrings": ["one", "two", "three"],
      "aListOfInts": [1, 2, 3],
      "aListOfDoubles": [1.0, 2.0, 3.0]
    },
    {
      "aString": "Blah, blah, blah.",
      "anInt": 1,
      "aListOfStrings": ["one", "two", "three"],
      "aListOfInts": [1, 2, 3],
      "aListOfDoubles": [1.0, 2.0, 3.0]
    },
    {
      "aString": "Blah, blah, blah.",
      "anInt": 1,
      "aDouble": 1.0,
      "aListOfInts": [1, 2, 3],
      "aListOfDoubles": [1.0, 2.0, 3.0]
    },
    {
      "aString": "Blah, blah, blah.",
      "anInt": 1,
      "aDouble": 1.0,
      "aListOfStrings": ["one", "two", "three"],
      "aListOfDoubles": [1.0, 2.0, 3.0]
    },
    {
      "aString": "Blah, blah, blah.",
      "anInt": 1,
      "aDouble": 1.0,
      "aListOfStrings": ["one", "two", "three"],
      "aListOfInts": [1, 2, 3]
    },
    {
      "aString": "Blah, blah, blah.",
      "anInt": 1,
      "aDouble": 1.0,
      "aListOfStrings": [],
      "aListOfInts": [1, 2, 3],
      "aListOfDoubles": [1.0, 2.0, 3.0]
    },
    {
      "aString": "Blah, blah, blah.",
      "anInt": 1,
      "aDouble": 1.0,
      "aListOfStrings": ["one", "two", "three"],
      "aListOfInts": [],
      "aListOfDoubles": [1.0, 2.0, 3.0]
    },
    {
      "aString": "Blah, blah, blah.",
      "anInt": 1,
      "aDouble": 1.0,
      "aListOfStrings": ["one", "two", "three"],
      "aListOfInts": [1, 2, 3],
      "aListOfDoubles": []
    }
  ]
  ''';

  static final List<String> simpleObjects = [
    '''
  {
    "aString": "Blah, blah, blah.",
    "anInt": 1,
    "aDouble": 1.0,
    "aListOfStrings": ["one", "two", "three"],
    "aListOfInts": [1, 2, 3],
    "aListOfDoubles": [1.0, 2.0, 3.0]
  }''',
    '''
  {
    "anInt": 1,
    "aDouble": 1.0,
    "aListOfStrings": ["one", "two", "three"],
    "aListOfInts": [1, 2, 3],
    "aListOfDoubles": [1.0, 2.0, 3.0]
  }''',
    '''
  {
    "aString": "Blah, blah, blah.",
    "aDouble": 1.0,
    "aListOfStrings": ["one", "two", "three"],
    "aListOfInts": [1, 2, 3],
    "aListOfDoubles": [1.0, 2.0, 3.0]
  }''',
    '''
  {
    "aString": "Blah, blah, blah.",
    "anInt": 1,
    "aListOfStrings": ["one", "two", "three"],
    "aListOfInts": [1, 2, 3],
    "aListOfDoubles": [1.0, 2.0, 3.0]
  }''',
    '''
  {
    "aString": "Blah, blah, blah.",
    "anInt": 1,
    "aDouble": 1.0,
    "aListOfInts": [1, 2, 3],
    "aListOfDoubles": [1.0, 2.0, 3.0]
  }''',
    '''
  {
    "aString": "Blah, blah, blah.",
    "anInt": 1,
    "aDouble": 1.0,
    "aListOfStrings": ["one", "two", "three"],
    "aListOfDoubles": [1.0, 2.0, 3.0]
  }''',
    '''
  {
    "aString": "Blah, blah, blah.",
    "anInt": 1,
    "aDouble": 1.0,
    "aListOfStrings": ["one", "two", "three"],
    "aListOfInts": [1, 2, 3]
  }''',
    '''
  {
    "aString": "Blah, blah, blah.",
    "anInt": 1,
    "aDouble": 1.0,
    "aListOfStrings": [],
    "aListOfInts": [1, 2, 3],
    "aListOfDoubles": [1.0, 2.0, 3.0]
  }''',
    '''
  {
    "aString": "Blah, blah, blah.",
    "anInt": 1,
    "aDouble": 1.0,
    "aListOfStrings": ["one", "two", "three"],
    "aListOfInts": [],
    "aListOfDoubles": [1.0, 2.0, 3.0]
  }''',
    '''
  {
    "aString": "Blah, blah, blah.",
    "anInt": 1,
    "aDouble": 1.0,
    "aListOfStrings": ["one", "two", "three"],
    "aListOfInts": [1, 2, 3],
    "aListOfDoubles": []
  }''',
  ];

  static final List<String> complexObjects = [
    '''
  {
    "aString": "Blah, blah, blah.",
    "anInt": 1,
    "aDouble": 1.0,
    "anObject": {
      "anInt": 1,
      "aString": "Blah, blah, blah.",
      "aDouble": 1.0,
      "aListOfStrings": ["one", "two", "three"],
      "aListOfInts": [1, 2, 3],
      "aListOfDoubles": [1.0, 2.0, 3.0]
    },
    "aListOfStrings": ["one", "two", "three"],
    "aListOfInts": [1, 2, 3],
    "aListOfDoubles": [1.0, 2.0, 3.0],
    "aListOfObjects": [
      {
        "aString": "Blah, blah, blah.",
        "anInt": 1,
        "aDouble": 1.0,
        "aListOfStrings": ["one", "two", "three"],
        "aListOfInts": [1, 2, 3],
        "aListOfDoubles": [1.0, 2.0, 3.0]
      },
      {
        "aString": "Blah, blah, blah.",
        "anInt": 2,
        "aDouble": 1.0,
        "aListOfStrings": ["one", "two", "three"],
        "aListOfInts": [1, 2, 3],
        "aListOfDoubles": [1.0, 2.0, 3.0]
      },
      {
        "aString": "Blah, blah, blah.",
        "anInt": 3,
        "aDouble": 1.0,
        "aListOfStrings": ["one", "two", "three"],
        "aListOfInts": [1, 2, 3],
        "aListOfDoubles": [1.0, 2.0, 3.0]
      }
    ]
  }''',
    '''
  {
    "aString": "Blah, blah, blah.",
    "anInt": 1,
    "aDouble": 1.0,
    "anObject": {
      "aString": "Blah, blah, blah.",
      "anInt": 1,
      "aDouble": 1.0,
      "aListOfStrings": ["one", "two", "three"],
      "aListOfInts": [1, 2, 3],
      "aListOfDoubles": [1.0, 2.0, 3.0]
    },
    "aListOfStrings": ["one", "two", "three"],
    "aListOfInts": [1, 2, 3],
    "aListOfDoubles": [1.0, 2.0, 3.0],
    "aListOfObjects": []
  }''',
    '''
  {
    "aString": "Blah, blah, blah.",
    "anInt": 1,
    "aDouble": 1.0,
    "anObject": {
      "aString": "Blah, blah, blah.",
      "anInt": 1,
      "aDouble": 1.0,
      "aListOfStrings": ["one", "two", "three"],
      "aListOfInts": [1, 2, 3],
      "aListOfDoubles": [1.0, 2.0, 3.0]
    },
    "aListOfStrings": ["one", "two", "three"],
    "aListOfInts": [1, 2, 3],
    "aListOfDoubles": [1.0, 2.0, 3.0]
  }''',
  ];
}
