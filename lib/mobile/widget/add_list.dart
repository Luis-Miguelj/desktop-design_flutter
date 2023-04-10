import 'package:desktop_app/mobile/widget/lista_tarefas.dart';
import 'package:flutter/material.dart';

class AddList extends StatefulWidget {
  static const route = 'add';

  final String title;
  final String desc;
  final List? lista;

  AddList({this.title = '', this.desc = '', this.lista});

  @override
  State<AddList> createState() => _AddListState();
}

class _AddListState extends State<AddList> {
  // final Function _save;

  final _titleController = TextEditingController();

  final _descController = TextEditingController();

  AddList ok = AddList();

  GlobalKey<FormState> _form = GlobalKey();

  ListaTarefas t = ListaTarefas();
  // List<AddList>

  @override
  Widget build(BuildContext context) {
    void _add() {
      _form.currentState?.validate();
      if (_titleController.text.isNotEmpty && _descController.text.isNotEmpty) {
        setState(() {});
        print(ok.lista);
        Navigator.of(context).pop();
      } else {
        print('Algo deu errado');
      }
    }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: 600,
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Text(
                'Adicionar Tarefa',
                style: TextStyle(
                    color: Color(0xff121212),
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: 400,
                  height: 400,
                  margin: EdgeInsets.only(left: 35, right: 35),
                  child: Form(
                    key: _form,
                    child: ListView(
                      children: [
                        Container(
                          child: TextFormField(
                            controller: _titleController,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              label: Text('Titulo...',
                                  style: TextStyle(color: Color(0xff121212))),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff121212)),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff121212)),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            cursorColor: Color(0xff121212),
                            style: TextStyle(color: Colors.black),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo não preenchido';
                              }
                            },
                          ),
                        ),
                        //----------------------------------------------------------------------------------------
                        SizedBox(
                          height: 20,
                        ),
                        //----------------------------------------------------------------------------------------
                        Container(
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            controller: _descController,
                            decoration: InputDecoration(
                              label: Text(
                                'Descrição...',
                                style: TextStyle(color: Color(0xff121212)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff121212)),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff121212)),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            cursorColor: Color(0xff121212),
                            style: TextStyle(color: Colors.black),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo não preenchido';
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: ElevatedButton(
                            onPressed: _add,
                            child: Text(
                              'Salvar',
                              style: TextStyle(
                                  color: Color(0xfff5f5f5),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 5,
                                primary: Color(0xff121212),
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
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
    );
    ;
  }
}
