import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CalcButton extends StatelessWidget {
  final String text;
  const CalcButton({Key key,this.text,this.fillcolor,this.textcolor,this.textsize,this.callback}):super(key:key);
  final Color fillcolor;
  final Color textcolor;
  final double textsize;
  final Function callback;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 65,
        width: 65,
        child: FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50) ),
          child: Text(text,style: GoogleFonts.rubik(
            textStyle: TextStyle(
              fontSize: textsize,
              color: textcolor
            )
          )),
          onPressed: (){callback(text);},
          color: fillcolor,
          ),
      ),
    );
  }
}
