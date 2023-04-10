import 'package:desktop_app/pages/home.dart';
import 'package:flutter/material.dart';

class LoginDesktop extends StatefulWidget {
  @override
  State<LoginDesktop> createState() => _LoginDesktopState();
}

class _LoginDesktopState extends State<LoginDesktop> {
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
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/thumb3.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff121212),
              Color(0xff121212),
              Color(0xff121212).withOpacity(0.9),
              Color(0xff161616).withOpacity(0.7),
              Color(0xff191A19).withOpacity(0.8),
              Color(0xff191A19).withOpacity(0.4),
              Color(0xff395B64).withOpacity(0.1),
              // Color(0xff191A19).withOpacity(0),
              // Color(0xff395B64).withOpacity(0.1),
            ], begin: Alignment.bottomRight, end: Alignment.topLeft),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text(
                      //   'Login',
                      //   style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: 60,
                      //       fontFamily: 'PlayfairDisplay'),
                      // ),
                      Icon(
                        Icons.bedtime_outlined,
                        color: Colors.white,
                        size: 130,
                      )
                      // Icon(Icons.bedtime_outlined, color: Colors.white,size: 80,)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.only(left: 200, right: 200, top: 200),
                        height: 380,
                        child: Form(
                          key: _form,
                          child: ListView(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 15, bottom: 10),
                                child: TextFormField(
                                  controller: _nameController,
                                  decoration: InputDecoration(
                                    label: Text('Email...'),
                                    labelStyle: TextStyle(color: Colors.white),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  cursorColor: Colors.white,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Campo não preenchido';
                                    }
                                    return '';
                                  },
                                  style: TextStyle(color: Colors.white),
                                ),
                                //=-------------------------------------------------------------------------------------------------------
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 15, bottom: 10),
                                child: TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    label: Text('Senha...'),
                                    labelStyle: TextStyle(color: Colors.white),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  cursorColor: Colors.white,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Campo não preenchido';
                                    }
                                    return '';
                                  },
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
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
                                      elevation: 7,
                                      padding: EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(top: 15),
                                child: TextButton(
                                  onPressed: () => print('registrado'),
                                  child: Text(
                                    'Registrar-se',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: TextButton.styleFrom(),
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
            ],
          ),
        ),
      ),
    );
  }
}
// Expanded(
//               child: Container(
//                 width: 500,
//                 height: double.maxFinite,
//                 child: Image(
//                   image: AssetImage('assets/images/thumb3.jpg'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 width: 100,
//                 height: double.maxFinite,
//                 child: null,
//                 // color: Color(0xff121212),
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(colors: [
//                   Color(0xff121212),
//                   Color(0xff2C3333),
//                   Color(0xff395B64)
//                 ], begin: Alignment.bottomLeft)),
//               ),
//             )