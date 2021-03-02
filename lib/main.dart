import 'package:flutter/material.dart';
import 'Widgets/calcbutton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';
void main() {
  runApp(Calc());
}
class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {

  String expression='';
  String result='';
  void NumClick(String text)
  {
    setState(() {
          result+=text;
        });
  }
  void all_clear(String text)
  {
    setState(() {
          expression='';
          result='';

        });
  }
  void clear(String text)
  {
    setState(() {
          
          result='';

        });
  }
  void eval(String text)
  {
     Parser p = Parser();
  Expression exp = p.parse(result);
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
          expression=result;
          result=eval.toString();
        });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Padding(
            padding: const EdgeInsets.only(right:12),
            child: Container(
              child: Text(expression,style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: 28,
                color: Colors.white38
              )
            )),
            alignment: Alignment.centerRight,
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Text(result,style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  fontSize: 50,
                  color: Colors.white
                )
              )),
              alignment: Alignment.centerRight,
              ),
            ),
          
          Divider(
            thickness: 5.0,
            color: Colors.grey[300]
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CalcButton(
            text: 'AC',
            callback: all_clear,
            fillcolor: Colors.white,
            textsize: 25.0,
          ),
          CalcButton(
            text: 'C',
            callback: clear,
            fillcolor: Colors.white,
            textsize: 30.0,
          ),
          CalcButton(
            text: '%',callback: NumClick,
            fillcolor: Colors.white,
            textsize: 30.0,
          ),
          CalcButton(
            text: '÷',callback: NumClick,
            fillcolor: Colors.white,
            textsize: 30.0,
          ),
          ],
          ), Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CalcButton(
            text: '1',
            textcolor: Colors.white,
            callback: NumClick,
            fillcolor: Color(0xFF283637),
            textsize: 25.0,
          ),
          CalcButton(
            text: '2',
            textcolor: Colors.white,
            callback: NumClick,
            fillcolor: Color(0xFF283637),
            textsize: 30.0,
          ),
          CalcButton(
            text: '3',
            textcolor: Colors.white,
            callback: NumClick,
            fillcolor: Color(0xFF283637),
            textsize: 30.0,
          ),
          CalcButton(
            text: '*',callback: NumClick,
            fillcolor: Colors.white,
            textsize: 50.0,
          ),
          ],
          ), Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CalcButton(
            text: '4',
            textcolor: Colors.white,
            callback: NumClick,
            fillcolor: Color(0xFF283637),
            textsize: 25.0,
          ),
          CalcButton(
            text: '5',
            textcolor: Colors.white,
            callback: NumClick,
            fillcolor: Color(0xFF283637),
            textsize: 30.0,
          ),
          CalcButton(
            text: '6',
            textcolor: Colors.white,
            callback: NumClick,
            fillcolor: Color(0xFF283637),
            textsize: 30.0,
          ),
          CalcButton(
            text: '-',callback: NumClick,
            fillcolor: Colors.white,
            textsize: 30.0,
          ),
          ],
          ), Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CalcButton(
            text: '7',
            textcolor: Colors.white,
            callback: NumClick,
            fillcolor: Color(0xFF283637),
            textsize: 25.0,
          ),
          CalcButton(
            text: '8',
            textcolor: Colors.white,
            callback: NumClick,
            fillcolor: Color(0xFF283637),
            textsize: 30.0,
          ),
          CalcButton(
            text: '9',
            textcolor: Colors.white,
            callback: NumClick,
            fillcolor: Color(0xFF283637),
            textsize: 30.0,
          ),
          CalcButton(
            text: '+',callback: NumClick,
            fillcolor: Colors.white,
            textsize: 30.0,
          ),
          ],
          ), Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CalcButton(
            text: '.',callback: NumClick,
            fillcolor: Color(0xFF283637),
            textcolor: Colors.white,
            textsize: 25.0,
          ),
          CalcButton(
            text: '0',
            textcolor: Colors.white,
            callback: NumClick,
            fillcolor: Color(0xFF283637),
            textsize: 30.0,
          ),
          CalcButton(
            text: '00',
            textcolor: Colors.white,
            callback: NumClick,
            fillcolor: Color(0xFF283637),
            textsize: 25.0,
          ),
          CalcButton(
            text: '=',
            callback: eval,
            fillcolor: Colors.white,
            textsize: 30.0,
          ),
          ],
          ),
          
        ],)
         ),
      );
    
  }
}

