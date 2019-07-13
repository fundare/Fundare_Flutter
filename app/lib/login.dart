import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

final TextStyle textStyle = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  TextEditingController emailInputController;
  TextEditingController pwdInputController;
  FirebaseUser currentUser;

  String registerRoute = '/register';

  @override
  initState() {
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    super.initState();
  }

  String emailValidator(String value) {
    Pattern pattern = r'^[a-zA-Z0-9\._%+-]+@[A-Za-z0-9.-]+[\.A-Za-z]{2,3}$';
    RegExp email = new RegExp(pattern);
    if (!email.hasMatch(value)) {
      return 'Email format is invalid. Please ensure you follow standard formatting.\n i.e. username@domain.ext\n e.g. fundareuser@gmail.com';
    } else {
      return null;
    }
  }

  String pwdValidator(String value) {
    Pattern pattern = r'^((?=.*\d)(?=.*[A-Z])(?=.*\W).{8,})$';
    RegExp password = new RegExp(pattern);
    if (!password.hasMatch(value)) {
      return 'Invalid Password. Requirements: at least\n8 characters long\n1 Uppercase letter\n1 number\n1 special character.';
    } else {
      return null;
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
                child: Form(
              key: _loginFormKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email', hintText: 'first.last@gmail.com'),
                    controller: emailInputController,
                    keyboardType: TextInputType.emailAddress,
                    validator: emailValidator,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password', hintText: '********'),
                    controller: pwdInputController,
                    obscureText: true,
                    validator: pwdValidator,
                  ),
                  RaisedButton(
                    child: Text('Login'),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () {
                      if (_loginFormKey.currentState.validate()) {
                        FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: emailInputController.text,
                                password: pwdInputController.text)
                            .then((e) => {print("Sign In Success")})
                            .catchError((err) => print(err));
                      }
                    },
                  ),
                  Text("Don't have an account yet?"),
                  FlatButton(
                    child: Text('Register here!'),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/register');
                    },
                  )
                ],
              ),
            ))));
  }
}
