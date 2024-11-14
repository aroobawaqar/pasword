import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  //here we make a variable ishiddenPaswrd
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      //need to wrap the column with container
      body: Container(
        padding: const EdgeInsets.all(10.0),//now wrap padding and add padding 10.0
        child: Column(
          // A column can hold multiple widgets
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add heading login
                Text('Login',style: Theme.of(context).textTheme.headlineMedium,),
                //Here is two textFormField Email and Password
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                TextField(
                  obscureText: isHiddenPassword,//true
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.security),
                    //here we use inkwell for clikable
                    suffixIcon: InkWell(
                      onTap: _togglePasswordView,//here we call the method _togglepassword
                      child: Icon(
                        isHiddenPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20), // To add some space between the elements
                // make a button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,),
                  onPressed: () {
                    // Add your login logic here
                  },
                  child: const Text('Login', style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
//this is the function of togglepassword
  void _togglePasswordView() {
      setState(() {
      isHiddenPassword = !isHiddenPassword;//this is the boolean variable password hide/seek
    });
  }
}
