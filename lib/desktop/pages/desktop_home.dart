import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DeskTopHome extends StatefulWidget {
  @override
  State<DeskTopHome> createState() => _DeskTopHomeState();
}

class _DeskTopHomeState extends State<DeskTopHome> {
  final urlImg = [
    'assets/images/thumb1.png',
    'assets/images/thumb2.jpg',
    'assets/images/thumb3.jpg',
    'assets/images/thumb4.jpg',
    'assets/images/thumb5.jpg',
    'assets/images/thumb7.jpg',
  ];

  final String name = 'Luis';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 5,
        width: 220,
        backgroundColor: Colors.grey[300],
        child: Container(
          margin: EdgeInsets.only(top: 30, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Color(0xff121212),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () => print('home'),
                        child: Text(
                          'Home',
                          style: TextStyle(color: Color(0xff121212)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Color(0xff121212),
                    ),
                    Container(
                      // margin: EdgeInsets.only(top: 5),
                      child: TextButton(
                        onPressed: () => print('sobre'),
                        child: Text(
                          'Sobre',
                          style: TextStyle(color: Color(0xff121212)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.contact_mail,
                      color: Color(0xff121212),
                    ),
                    Container(
                      // margin: EdgeInsets.only(top: 5),
                      child: TextButton(
                        onPressed: () => print('contato'),
                        child: Text(
                          'Contato',
                          style: TextStyle(color: Color(0xff121212)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        bottom:
            PreferredSize(preferredSize: Size.fromHeight(10), child: Text('')),
        elevation: 6,
        backgroundColor: Color(0xff121212),
        title: Text('D E S K T O P'),
      ),
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/thumb2.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff121212).withOpacity(0.9),
              Color(0xff121212).withOpacity(0.7),
              Color(0xff121212).withOpacity(0.6),
              Color(0xff161616).withOpacity(0.7),
              Color(0xff191A19).withOpacity(0.6),
              Color(0xff191A19).withOpacity(0.4),
              Color(0xff395B64).withOpacity(0.4),
              Color(0xfff5f5f5).withOpacity(0.3)
            ], begin: Alignment.bottomRight, end: Alignment.topLeft),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: AspectRatio(
                              aspectRatio: 16 / 7,
                              child: Container(
                                // decoration: BoxDecoration(
                                //     color: Color(0xfff5f5f5).withOpacity(0.5),
                                //     borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: Color(0xff121212),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              width: double.maxFinite,
                                              height: 100,
                                              child: null,
                                            ),
                                            AspectRatio(
                                              aspectRatio: 8/5,
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 10,
                                                ),
                                                width: double.maxFinite,
                                                height: double.maxFinite,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff121212),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: null,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: Color(0xff121212),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              width: double.maxFinite,
                                              height: 100,
                                              child: null,
                                            ),
                                            AspectRatio(
                                              aspectRatio: 8/5,
                                              child: Container(
                                                margin: EdgeInsets.all(10),
                                                width: double.maxFinite,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff121212),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                ),
                                                // color: Colors.black,
                                                child: null,
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
                          Container(
                            // height: 410,
                            // child: CarouselSlider.builder(
                            //   itemCount: urlImg.length,
                            //   itemBuilder: (context, index, realIndex) {
                            //     final urlImage = urlImg[index];
                            //     return buildImage(urlImage, index);
                            //   },
                            //   options: CarouselOptions(
                            //       height: 400,
                            //       autoPlay: true,
                            //       autoPlayInterval: Duration(seconds: 3)),
                            // ),

                            child: Container(
                              margin: EdgeInsets.all(10),
                              width: double.maxFinite,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.grey[350],
                                  borderRadius: BorderRadius.circular(10)),
                              child: null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget buildImage(String urlImage, int index) => Container(
  //       margin: EdgeInsets.all(10),
  //       child: Image.asset(
  //         urlImage,
  //         fit: BoxFit.cover,
  //       ),
  //       color: Color(0xff121212),
  //     );
}
