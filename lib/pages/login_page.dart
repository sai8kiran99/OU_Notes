import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  final _passwordFieldController = TextEditingController();
  final _emailFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "OU Notes",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(
            height: 85,
          ),
          Card(
            margin: EdgeInsets.all(30),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _emailFieldController,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        labelText: "Email",
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _passwordFieldController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("LOGIN"),
                    color: Colors.black,
                    textColor: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("Register"),
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}