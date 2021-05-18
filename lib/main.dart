import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './widget/DartButton.dart';

void main() {
  runApp(DialApp());
}

//DialPad

class DialApp extends StatefulWidget {
  const DialApp({Key key}) : super(key: key);

  @override
  DialAppState createState() => DialAppState();
}

class DialAppState extends State<DialApp> {
  String _expression = '';

  void numClick(String text) {
    setState(() => _expression += text);
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void delete(String text) {
    setState(() {
      _expression = _expression.substring(0, _expression.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DialPad',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    _expression,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 45,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  DialButton(
                    text: '7',
                    callback: numClick,
                  ),
                  DialButton(
                    text: '8',
                    callback: numClick,
                  ),
                  DialButton(
                    text: '9',
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  DialButton(
                    text: '4',
                    callback: numClick,
                  ),
                  DialButton(
                    text: '5',
                    callback: numClick,
                  ),
                  DialButton(
                    text: '6',
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  DialButton(
                    text: '1',
                    callback: numClick,
                  ),
                  DialButton(
                    text: '2',
                    callback: numClick,
                  ),
                  DialButton(
                    text: '3',
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  DialButton(
                    text: '<',
                    callback: delete,
                  ),
                  DialButton(
                    text: '0',
                    callback: numClick,
                  ),
                  DialButton(
                    text: 'C',
                    callback: clear,
                    textSize: 25,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
