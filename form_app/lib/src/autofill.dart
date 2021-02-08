// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

// Demonstrates how to use autofill hints. The full list of hints is here:
// https://github.com/flutter/engine/blob/master/lib/web_ui/lib/src/engine/text_editing/autofill_hint.dart
class AutofillDemo extends StatefulWidget {
  @override
  _AutofillDemoState createState() => _AutofillDemoState();
}

class _AutofillDemoState extends State<AutofillDemo> {
  final _formKey = GlobalKey<FormState>();

  FocusNode _lastname, _email, _telephone, _streetAddresss, _postalCode, _country, _countrycode;

  @override
  void initState() {
    super.initState();
    _lastname = FocusNode();
    _email = FocusNode();
    _telephone = FocusNode();
    _streetAddresss = FocusNode();
    _postalCode = FocusNode();
    _country = FocusNode();
    _countrycode = FocusNode();
  }

  @override
  void dispose() {
    _lastname = FocusNode();
    _email = FocusNode();
    _telephone = FocusNode();
    _streetAddresss = FocusNode();
    _postalCode = FocusNode();
    _country = FocusNode();
    _countrycode = FocusNode();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Autofill'),
      ),
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: AutofillGroup(
              child: Column(
                children: [
                  ...[
                    Text('This sample demonstrates autofill. '),
                    TextFormField(
                      onFieldSubmitted: (vaue) {
                        _lastname.requestFocus();
                      },
                      decoration: InputDecoration(
                        hintText: 'Jane',
                        labelText: 'First Name',
                      ),
                      autofillHints: [AutofillHints.givenName],
                    ),
                    TextFormField(
                      focusNode: _lastname,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (value) {
                        _email.requestFocus();
                      },
                      decoration: InputDecoration(
                        hintText: 'Doe',
                        labelText: 'Last Name',
                      ),
                      autofillHints: [AutofillHints.familyName],
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      focusNode: _email,
                      textInputAction: TextInputAction.next,
                      onSubmitted: (value) {
                        _telephone.requestFocus();
                      },
                      decoration: InputDecoration(
                        hintText: 'foo@example.com',
                        labelText: 'Email',
                      ),
                      autofillHints: [AutofillHints.email],
                    ),
                    TextField(
                      keyboardType: TextInputType.phone,
                      focusNode: _telephone,
                      textInputAction: TextInputAction.next,
                      onSubmitted: (value) {
                        _streetAddresss.requestFocus();
                      },
                      decoration: InputDecoration(
                        hintText: '(123) 456-7890',
                        labelText: 'Telephone',
                      ),
                      autofillHints: <String>[AutofillHints.telephoneNumber],
                    ),
                    TextField(
                      keyboardType: TextInputType.streetAddress,
                      focusNode: _streetAddresss,
                      textInputAction: TextInputAction.next,
                      onSubmitted: (value) {
                        _postalCode.requestFocus();
                      },
                      decoration: InputDecoration(
                        hintText: '123 4th Ave',
                        labelText: 'Street Address',
                      ),
                      autofillHints: <String>[AutofillHints.streetAddressLine1],
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      focusNode: _postalCode,
                      textInputAction: TextInputAction.next,
                      onSubmitted: (value) {
                        _country.requestFocus();
                      },
                      decoration: InputDecoration(
                        hintText: '12345',
                        labelText: 'Postal Code',
                      ),
                      autofillHints: <String>[AutofillHints.postalCode],
                    ),
                    TextField(
                      focusNode: _country,
                      textInputAction: TextInputAction.next,
                      onSubmitted: (value) {
                        _countrycode.requestFocus();
                      },
                      decoration: InputDecoration(
                        hintText: 'United States',
                        labelText: 'Country',
                      ),
                      autofillHints: <String>[AutofillHints.countryName],
                    ),
                    TextField(
                      focusNode: _countrycode,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '1',
                        labelText: 'Country Code',
                      ),
                      autofillHints: <String>[AutofillHints.countryCode],
                    ),
                  ].expand(
                    (widget) => [
                      widget,
                      SizedBox(
                        height: 24,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
