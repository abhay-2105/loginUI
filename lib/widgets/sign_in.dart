import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign In',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Email',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                Material(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  elevation: 4,
                  shadowColor: Colors.blue,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      filled: true,
                      fillColor: Color.fromARGB(255, 104, 166, 240),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      hintText: 'Enter Your Email',
                      hintStyle: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Password',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                Material(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  elevation: 4,
                  shadowColor: Colors.blue,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      filled: true,
                      fillColor: Color.fromARGB(255, 104, 166, 240),
                      prefixIcon: Icon(
                        Icons.key_outlined,
                        color: Colors.white,
                      ),
                      hintText: 'Enter Your Password',
                      hintStyle: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text('Forgot password?',
                          style: TextStyle(color: Colors.white))),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.green,
                    fillColor: MaterialStateProperty.all(Colors.white),
                    side: const BorderSide(color: Colors.grey, width: 1.5),
                    value: _checkBoxValue,
                    onChanged: (value) {
                      setState(() {
                        _checkBoxValue = !_checkBoxValue;
                      });
                    }),
                const SizedBox(
                  width: 5,
                ),
                const Text('Remember me',
                    style: TextStyle(color: Colors.white, fontSize: 14)),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 45,
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 4,
                  primary: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
              onPressed: () {},
              child: const Text(
                'LOGIN',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                    color: Colors.blue,
                    fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '-OR-',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Sign in with',
            style: TextStyle(
              letterSpacing: 0.5,
              fontSize: 12,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6, color: Colors.black, spreadRadius: 0)
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/Facebook-logo.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6, color: Colors.black, spreadRadius: 0)
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        AssetImage('assets/Google-Icon-PNG-768x768.jpg'),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
