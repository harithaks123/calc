import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: calculators(),));
}
class calculators extends StatefulWidget {
  const calculators({Key? key}) : super(key: key);

  @override
  State<calculators> createState() => _calculatorsState();
}

class _calculatorsState extends State<calculators> {

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text('CALCULATOR',style: TextStyle(backgroundColor: Colors.blue,),),centerTitle: true,),
      body: Column(
        children: [
          SizedBox(height: 40,),
          TextField(decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: '0',
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButtton('AC',),
              CalculatorButtton('00'),
              CalculatorButtton('-'),
              CalculatorButtton('%')

            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButtton('1'),
              CalculatorButtton('2'),
              CalculatorButtton('3'),
              CalculatorButtton('*')

            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculatorButtton('5'),
              CalculatorButtton('6'),
              CalculatorButtton('7'),
              CalculatorButtton('+')

            ],
          ),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorButtton('9'),
            CalculatorButtton('8'),
            CalculatorButtton('*'),
            CalculatorButtton('=')

          ],),
    ],),
        );
  }

  TextButton CalculatorButtton(String calctext) => TextButton(onPressed: (){CalculatorButtton(calctext);}, child: Text(calctext,style: TextStyle(color: Colors.white,fontSize: 40,),
  ));
}
int first, second;
String res, text = "";
String opp;
void btnClicked(String btnText) {
  if (btnText == "C") {
    res = "";
    text = "";
    first = 0;
    second = 0;
  } else if (btnText == "+" ||
      btnText == "-" ||
      btnText == "x" ||
      btnText == "/") {
    first = int.parse(text);
    res = "";
    opp = btnText;
  } else if (btnText == "=") {
    second = int.parse(text);
    if (opp == "+") {
      res = (first + second).toString();
    }
    if (opp == "-") {
      res = (first - second).toString();
    }
    if (opp == "x") {
      res = (first * second).toString();
    }
    if (opp == "/") {
      res = (first ~/ second).toString();
    }
  } else {
    res = int.parse(text + btnText).toString();
  }
  setState(() {
    text = res;
  });
}
}