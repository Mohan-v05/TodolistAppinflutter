import 'package:flutter/material.dart'; // imports packages Cointain UI elements scaffold Textfield button

//defining  a Login page class
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

//the above class login page extenrted from stateful widget  which means it has a state that class change during run time
//createState() method creates an instance of _LoginPageState, where all the UI logic will be handled

//define State class

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController =
      TextEditingController(); //controller for email
  final TextEditingController _passwordController =
      TextEditingController(); //controller for password

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      print("Logging in wirh email : $email,password: $password");
    } else {
      print("Email and password are required");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login")), //app bar of the scaffold
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://th.bing.com/th/id/OIP.MZYX66wI4kMfgrRO5tRpGQHaEK?w=304&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                height: 150,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _passwordController,
                obscureText: true, // Hides password
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/home',
                    (route) => false, // Removes all previous routes
                  );
                },
                child: const Text("Login"),
              ),
            ],
          ),
        ));
  }
}
