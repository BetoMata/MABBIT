import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
            child: Column(
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration:
                  InputDecoration(icon: Icon(Icons.email), labelText: "Email"),
              keyboardType: TextInputType.emailAddress,
              autovalidate: true,
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: "Password",
              ),
              autovalidate: true,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xffffae88), Color(0xff8f93ea)])),
              child: MaterialButton(
                onPressed: () {},
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: StadiumBorder(),
                child: Text('Login'),
              ),
            )
          ],
        )));
  }
}
