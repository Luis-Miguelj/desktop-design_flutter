import 'package:desktop_app/mobile/widget/add_list.dart';
import 'package:desktop_app/mobile/widget/lista_tarefas.dart';
import 'package:flutter/material.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  final List _containerList = [];
  

  void _save(ListaTarefas save) {
    setState(() {
      _containerList.add(save);
    });
    print(_containerList);
    print(save.title);
    print(save.desc);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Color(0xff121212),
        title: Text('M O B I L E'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () => Navigator.of(context).pushNamed(AddList.route),
              icon: Icon(
                Icons.add,
                size: 25,
                color: Colors.white,
              ),
            ),
          )
        ],
        bottom: PreferredSize(
          child: Text(''),
          preferredSize: Size.fromHeight(20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/thumb3.jpg'),
                        fit: BoxFit.cover),
                    color: Color(0xff121212),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // color: Colors.deepPurple[400],
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xfff3f3f3).withOpacity(0.5),
                              Color(0xffa6a6a6).withOpacity(0.3),
                              Color(0xfff5f5f5).withOpacity(0.5),
                              Color(0xffa7a7a7).withOpacity(0.4),
                              Color(0xff262626).withOpacity(0.6),
                              Color(0xff252525).withOpacity(0.7),
                              Color(0xff202020).withOpacity(0.5),
                              Color(0xff161616).withOpacity(0.8),
                              Color(0xff121212).withOpacity(1),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight),
                        borderRadius: BorderRadius.circular(10)),
                    child: null,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                height: double.infinity,
                child: PageView.builder(
                  itemCount: _containerList.length,
                  itemBuilder: (context, index) {
                    final lista = _containerList[index];
                    return lista;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
