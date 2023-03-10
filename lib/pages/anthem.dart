import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:alert/alert.dart';

class Anthem extends StatefulWidget {
  const Anthem({Key? key}) : super(key: key);

  @override
  State<Anthem> createState() => _AnthemState();
}

class _AnthemState extends State<Anthem> {

  var ecwaAnthem = "";

  void getAnthem() async{
    String response;
    try {
      response = await rootBundle.loadString('assets/texts/ecwa_anthem.txt');
      setState(() {
        ecwaAnthem = response;
        // print(ecwaAnthem);
      });
    } catch (e) {
      print('Error reading file: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getAnthem();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView(
              controller: ScrollController(),
              children: [
                const Center(
                  child: Text(
                      "THE ECWA ANTHEM",

                      style: TextStyle(
                          color: Color(0xaa012BB1),
                          overflow: TextOverflow.fade,
                          fontFamily: "Tahoma",
                          fontSize: 16.0,
                          height: 1.5,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
                Text(
                  ecwaAnthem,
                  // "THIS IS TEST",
                  style: const TextStyle(
                    color: Color(0xaa012BB1),
                    overflow: TextOverflow.fade,
                    fontFamily: "Times New Roman",
                    fontSize: 16.0,
                    height: 1.5,
                  ),
                )
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Alert(message: 'Anthem COPIED').show();
              Clipboard.setData(ClipboardData(text: ecwaAnthem));
            },
            style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(BorderSide.none),
            ),
            child: const Icon(
              Icons.copy,
              size: 30,
              color: Color(0xaa012BB1),
            ),
          )
        ],
      ),
    );
  }
}
