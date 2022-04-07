import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Login',
            style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
          ),
          centerTitle: true),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'NeedDL',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              )),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Sign In',
                style: TextStyle(fontSize: 20),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile no',
                  suffixIcon: Icon(Icons.phone)),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  suffixIcon: Icon(Icons.password)),
            ),
          ),
          TextButton(
            onPressed: () {
              //forgot password screen
            },
            child: const Text(
              'Forgot Password',
            ),
          ),
          Container(
            height: 40,
            width: 150,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ))),
              child: const Text('Login'),
              onPressed: () {
                print(nameController.text);
                print(passwordController.text);
              },
            ),
          ),
          Row(
            children: <Widget>[
              const Text('Does not have account?'),
              TextButton(
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  //signup screen
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
