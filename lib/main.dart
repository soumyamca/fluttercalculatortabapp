import 'package:calctabviewapp/screen/add.dart';
import 'package:calctabviewapp/screen/div.dart';
import 'package:calctabviewapp/screen/mul.dart';
import 'package:calctabviewapp/screen/sub.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "ADD",),
                Tab(text: "SUBTRACT",),
                Tab(text: "MULTIPLY",),
                Tab(text: "DIVIDE",)
              ],
            ),
            title: Text("CALCULATOR"),
          ),
          body: TabBarView(
            children: [
              Add(),
              Sub(),
              Mul(),
              Div(),

            ],
          ),
        ),
      ),
    );
  }
}
