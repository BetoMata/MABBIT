import 'package:flutter/material.dart';
import 'package:mabbit/widgets/gradient_button.dart';

class RegisterForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<RegisterForm> {
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
              obscureText: true,
              autovalidate: true,
            ),
            SizedBox(
              height: 10,
            ),
            GradientButton(
              width: 150,
              height: 45,
              onPressed: () {},
              text: Text('LogIn', style: TextStyle(color: Colors.white)),
              icon: Icon(Icons.check, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        )));
  }
}
