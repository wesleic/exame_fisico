import 'package:flutter/material.dart';

class ExameFisico extends StatefulWidget {
  @override
  _ExameFisicoState createState() => _ExameFisicoState();
}

class _ExameFisicoState extends State<ExameFisico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exame Físico'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Card(
            child: CheckboxListTile(
              value: true,
              onChanged: (c){
                setState(() {

                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
