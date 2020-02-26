import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.display4,
              ),
              TextFormField(
                controller: _usernameController,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
              ),
              SizedBox(
                height: 24,
              ),
              RaisedButton(
                color: Colors.yellow,
                child: Text('ENTER'),
                onPressed: () {
                  //To clear the entered data from both TextFormFields
                  _usernameController.text = '';
                  _passwordController.text = '';
                  
                  //To dismiss keyboard from screen
                  FocusScope.of(context).requestFocus(FocusNode());
                  Navigator.pushNamed(context, '/catalog');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
