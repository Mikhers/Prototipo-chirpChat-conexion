import 'package:flutter/material.dart';
import 'package:chirp_chat/screens/login.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background2.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 50.0, bottom: 50.0),
                width: 200.0,
                height: 180.0,
                child: Image.asset('assets/icons/icon_man.png'),
              ),
              Container(
                  width: 350.0,
                  height: 460.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 15.0, top: 25.0),
                      width: 300.0,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                          isDense: true,
                          hintText: 'Type your name!',
                          // Added this
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15.0),
                      width: 300.0,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Surname',
                          isDense: true,
                          hintText: 'Type your surname!', // Added this
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15.0),
                      width: 300.0,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                          isDense: true,
                          hintText: 'Type your username!', // Added this
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15.0),
                      width: 300.0,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          isDense: true,
                          hintText: 'Type your email!', // Added this
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15.0),
                      width: 300.0,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          isDense: true,
                          hintText: 'Type your password!', // Added this
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 25.0),
                      width: 300.0,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm password',
                          isDense: true,
                          hintText: 'Type your password!', // Added this
                        ),
                      ),
                    ),
                    Container(
                      width: 300.0,
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MaterialButton(
                            elevation: 10.0,
                            minWidth: 110.0,
                            height: 40.0,
                            color: Colors.green[600],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                            onPressed: () {},
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          MaterialButton(
                            elevation: 10.0,
                            minWidth: 110.0,
                            height: 40.0,
                            color: Colors.grey[400],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
