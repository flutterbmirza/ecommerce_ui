import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5956E9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            //media query helps determine the height of the phone it is running on
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  width: 500,
                  color: Color(0xFF5956E9),
                  child: Center(
                    child: Text(
                      'Welcome \nback',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 46,
                          color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(32),
                    // height: 400,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 24),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 38,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.email_outlined,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Email',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: 'example@gmail.com'),
                              ),
                              SizedBox(
                                height: 45,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.lock_outline_rounded,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Password',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              TextField(
                                decoration:
                                    InputDecoration(hintText: 'password here'),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                  child: Text(
                                'Forgot Passcode?',
                                textAlign: TextAlign.start,
                                style: TextStyle(color: Colors.lightBlue),
                              ))

                              // TextButton(onPressed: () {}, child: Text('Forgot Passcode?',textAlign: TextAlign., style: TextStyle(color: Colors.lightBlue),))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
