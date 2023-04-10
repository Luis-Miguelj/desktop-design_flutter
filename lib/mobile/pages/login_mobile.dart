import 'package:flutter/material.dart';

import '../../pages/home.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile({super.key});

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  static final _nameController = TextEditingController();
  static final _passwordController = TextEditingController();

  static final nome = 'luis';
  static final senha = '1234';

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _form = GlobalKey();

    _login() {
      _form.currentState?.validate();

      if (_nameController.text == nome && _passwordController.text == senha) {
        Navigator.of(context).pushNamed(Home.route);
      } else {
        print('erro');
      }
    }

    return Scaffold(
      body: Stack(
        children: [
          // SizedBox.expand(
          //     child: Image(
          //   image: AssetImage('assets/images/thumb4.jpg'),
          //   fit: BoxFit.cover,
          // )),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/thumb3.jpg'),
                    fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff121212),
                  Color(0xff121212),
                  Color(0xff191A19).withOpacity(0.8),
                  Color(0xff191A19).withOpacity(0.6),
                  Color(0xff191A19).withOpacity(0.4),
                  Color(0xff395B64).withOpacity(0.1)
                ], begin: Alignment.bottomRight, end: Alignment.topLeft),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.only(top: 40, left: 20),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.bedtime_outlined,
                        color: Colors.white,
                        size: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 30, right: 30, bottom: 50),
                      // height: 400,
                      child: Form(
                        key: _form,
                        child: ListView(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              child: TextFormField(
                                controller: _nameController,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  // icon: Icon(Icons.person),
                                  // iconColor: Colors.white,
                                  label: Text('Email...'),
                                  labelStyle: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'PlayfairDisplay'),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                cursorColor: Colors.white,
                                style: TextStyle(color: Colors.white),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Campo não preenchido';
                                  }
                                  return '';
                                },
                              ),
                            ),
                            //---------------------------------------------------------------------------------------------------------
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              child: TextFormField(
                                controller: _passwordController,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  label: Text('Senha...'),
                                  labelStyle: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'PlayfairDisplay'),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                cursorColor: Colors.white,
                                style: TextStyle(color: Colors.white),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Campo não preenchido';
                                  }
                                  return '';
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              child: ElevatedButton(
                                onPressed: _login,
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'PlayfairDisplay'),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff121212),
                                    elevation: 8,
                                    padding: EdgeInsets.all(15),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                            Center(
                              child: TextButton(
                                onPressed: () => print('Registrado'),
                                child: Text(
                                  'Registrar-se',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'PlayfairDisplay'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// Text(
//                           'Login',
//                           style: TextStyle(
//                               fontSize: 50,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                               fontFamily: 'PlayfairDisplay'),
//                         )