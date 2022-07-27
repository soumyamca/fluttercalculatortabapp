import 'package:flutter/material.dart';
class Div extends StatefulWidget {
  const Div({Key? key}) : super(key: key);

  @override
  State<Div> createState() => _DivState();
}

class _DivState extends State<Div> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  double _sum=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: num1,
            decoration: InputDecoration(
                hintText: "1st number",
                labelText: "1st number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: num2,
            decoration: InputDecoration(
                hintText: "2nd number",
                labelText: "2nd number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: RaisedButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text("RESULT"),
                onPressed:(){
                  var getNum1=double.parse(num1.text);
                  var getNum2=double.parse(num2.text);
                  setState(() {
                    _sum=getNum1/getNum2;
                  });

                  print(_sum);


                })

            ,
          ),
          Text(_sum.toString(),style: TextStyle(fontSize: 30),)

        ],
      ),
    );
  }
}
