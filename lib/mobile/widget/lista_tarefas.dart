import 'package:flutter/material.dart';

class ListaTarefas extends StatelessWidget {
  final String title;
  final String desc;
  final String img;

  ListaTarefas({this.title = '', this.desc = '', this.img = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 600,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 15, right: 15),
            width: double.maxFinite,
            height: 500,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff121212).withOpacity(1),
                  Color(0xff161616).withOpacity(0.9),
                  Color(0xff202020).withOpacity(0.5),
                  Color(0xff252525).withOpacity(0.8),
                  Color(0xff262626).withOpacity(0.7),
                  Color(0xffa7a7a7).withOpacity(0.4),
                  Color(0xfff5f5f5).withOpacity(0.6),
                  Color(0xffa6a6a6).withOpacity(0.3),
                  Color(0xfff3f3f3).withOpacity(0.5),
                ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          title,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Text(
                          desc,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
