import 'package:flutter/material.dart';

class LoginPortrait extends StatefulWidget {
  const LoginPortrait({super.key});

  @override
  State<LoginPortrait> createState() => _LoginPortraitState();
}

class _LoginPortraitState extends State<LoginPortrait> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _form = GlobalKey();

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/thumb3.jpg'), fit: BoxFit.cover),
        ),
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
          child: Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    height: double.maxFinite,
                    // color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bedtime_outlined,
                          size: 100,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: double.maxFinite,
                    // color: Colors.black,
                    child: Form(
                      key: _form,
                      child: Container(
                        margin: EdgeInsets.only(top: 85, left: 100, right: 100),
                        child: ListView(
                          children: [
                            Container(
                              child: TextFormField(
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  label: Text('Email...'),
                                  labelStyle: TextStyle(color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
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
                            //--------------------------------------------------------------------------------------------------------------------------
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 10),
                              child: TextFormField(
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  label: Text('Senha...'),
                                  labelStyle: TextStyle(color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
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
                              margin: EdgeInsets.only(bottom: 10),
                              child: ElevatedButton(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontFamily: 'PlayfairDisplay',
                                      fontSize: 18),
                                ),
                                onPressed: () => _form.currentState?.validate(),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff121212),
                                    elevation: 6,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    padding: EdgeInsets.all(10)),
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
