import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:alert/alert.dart';
import 'package:untitled6/pages/update_devotional.dart';
import './fellowship_covenant.dart';
import './weekly_activities.dart';
import './anthem.dart';
import './bible_study_manual.dart';
import './organogram.dart';
import './church_accounts.dart';
import './about.dart';
import './leadership.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import './devotional.dart';

Color? notif(condition){
  Color? c;
  if(condition==1){
    c = const Color(0xffff0000);
    // return c;
  }
  return c;
}

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {

  String pathPDF = "";


  @override
  void initState() {
    super.initState();
    fromAsset('assets/demo-link.pdf', 'demo.pdf').then((f) {
      setState(() {
        pathPDF = f.path;
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => PDFScreen(path: pathPDF),
        //   ),
        // );
      });
    });

  }

  Future<File> fromAsset(String asset, String filename) async {
    // To open from assets, you can copy them to the app storage folder, and the access them "locally"
    Completer<File> completer = Completer();

    try {
      var dir = await getApplicationDocumentsDirectory();
      print(dir);
      File file = File("${dir.path}/$filename");
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }

    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF012BB1),
        title: const Text('ECWA Durumi II'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Image(image: AssetImage('assets/ecwa.png')),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(

          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Card(
                child: ListTile(
                  focusColor: const Color.fromARGB(250, 200, 0, 0),
                  hoverColor: const Color.fromARGB(250, 200, 0, 0),
                  onTap: (){
                    print("Notification Tapped");
                  },
                  mouseCursor: MouseCursor.defer,
                  leading: Icon(
                    FontAwesome5.bell,
                    color: notif(1),
                  ),
                  title: const Text("Notifications"),
                ),
              ),

              const Padding(padding: EdgeInsets.all(5.0)),
              Wrap(
                spacing: 10,
                runAlignment: WrapAlignment.spaceAround,
                runSpacing: 10,

                children: [

                  ElevatedButton(
                    onPressed: (){
                      Alert(message: "Coming soon...").show();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          // Change the button color based on the state
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.grey.shade300;
                          } else if (states.contains(MaterialState.disabled)) {
                            return Colors.grey.shade300;
                          }
                          return Colors.grey.shade300; // Use the default button color
                        },
                      ),
                    ),
                    child: Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      color: Colors.transparent,
                      constraints: const BoxConstraints(
                        maxWidth: 100.0,
                        maxHeight: 100.0,
                      ),
                      child: const Text(
                        "SS&S",
                        softWrap: true,
                        style: TextStyle(
                          color: Color(0xff999999),
                        ),),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: (){
                      Alert(message: "Coming soon...").show();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          // Change the button color based on the state
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.grey.shade300;
                          } else if (states.contains(MaterialState.disabled)) {
                            return Colors.grey.shade300;
                          }
                          return Colors.grey.shade300; // Use the default button color
                        },
                      ),
                    ),
                    child: Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      color: Colors.transparent,
                      constraints: const BoxConstraints(
                        maxWidth: 100.0,
                        maxHeight: 100.0,
                      ),
                      child: const Text(
                        "NIV Bible",
                        softWrap: true,
                        style: TextStyle(
                          color: Color(0xff999999),
                        ),),
                    ),
                  ),

                  ElevatedButton(
                      onPressed: (){
                        if (pathPDF.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PDFScreen(path: pathPDF),
                            ),
                          );
                        }
                        // print("Pressed");
                      },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            // Change the button color based on the state
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.blue.shade200;
                            } else if (states.contains(MaterialState.disabled)) {
                              return Colors.grey;
                            }
                            return Colors.white; // Use the default button color
                          },
                        ),
                    ),
                      child: Container(
                        width: 80,
                        height: 80,
                        alignment: Alignment.center,
                        color: Colors.transparent,
                        constraints: const BoxConstraints(
                          maxWidth: 100.0,
                          maxHeight: 100.0,
                        ),
                        child: const Text(
                          textAlign: TextAlign.center,
                          "Bible Study Manual",
                          softWrap: true,
                          style: TextStyle(
                          color: Color(0xaa012bb1),
                        ),),
                      ),
                  ),

                  ElevatedButton(
                      onPressed: (){
                        if (pathPDF.isNotEmpty) {
                          Navigator.push(

                            context,
                            MaterialPageRoute(
                              builder: (context) => devotionalUpdateField(),
                            ),
                          );
                        }
                        // print("Pressed");
                      },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            // Change the button color based on the state
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.blue.shade200;
                            } else if (states.contains(MaterialState.disabled)) {
                              return Colors.grey;
                            }
                            return Colors.white; // Use the default button color
                          },
                        ),
                    ),
                      child: Container(
                        width: 80,
                        height: 80,
                        alignment: Alignment.center,
                        color: Colors.transparent,
                        constraints: const BoxConstraints(
                          maxWidth: 100.0,
                          maxHeight: 100.0,
                        ),
                        child: const Text(
                          textAlign: TextAlign.center,
                          "Update Devotional",
                          softWrap: true,
                          style: TextStyle(
                          color: Color(0xaa012bb1),
                        ),),
                      ),
                  ),


                ],
              ),
              const SizedBox(height: 10),
              const DailyDevotion(),
            ],
          ),
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Scrollbar(
          trackVisibility: true,
          thumbVisibility: true,
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.zero,
                color: Color(0xFFCCD5EF),
                child: Flex(
                  // padding: EdgeInsets.all(0),
                  direction: Axis.horizontal,
                  children: const [
                    Expanded(
                      child: Center(
                        child: Image(
                    image: AssetImage('assets/theme2.jpeg'),
                        ),
                      ),
                    ),
                  ]
                ),
              ),
              const ECWA_AppCard(trans_body: Anthem(), title: "ECWA Anthem",),
              const ECWA_AppCard(trans_body: felCov(), title: "Fellowship Covenant",),
              const ECWA_AppCard(trans_body: Weekly_Act(), title: "Weekly Activities",),
              ExpansionTile(
                collapsedTextColor: Colors.red,
                textColor: const Color(0xff012bb1),
                collapsedIconColor: const Color(0xff012bb1),
                iconColor: const Color(0xff012bb1),
                childrenPadding: const EdgeInsets.only(left: 20.0),
                leading: const Icon(Icons.keyboard_arrow_right, color: Color(0xaa012bb1),),
                title: const Text("The Church", style: TextStyle(
                  color: Color(0xaa012bb1),
                  fontFamily: "Times New Roman"
                    ),
                ),
                children: [
                  ListTile(title: ECWA_AppCard(trans_body: LeaderShip(), title: "Church Contacts",)),
                  const ListTile(title: ECWA_AppCard(trans_body: OurOrganogram(), title: "Church Organogram",),),
                  const ListTile(title: ECWA_AppCard(trans_body: ChurchAccounts(), title: "Church Accounts",),)
                ],
              ),
              const ECWA_AppCard(trans_body: AboutApp(), title: "About",),
            ],
          ),
        ),
      ),
    );
  }
}

class ECWA_AppCard extends StatelessWidget {
  final trans_body;
  final title;
  final int myBlue = 0xaa012BB1;

  const ECWA_AppCard({
    Key? key,
    this.trans_body,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.white,
      child: Container(

        color: Colors.white,
        child: ListTile(
          selectedColor: Color(myBlue),
          focusColor: Color(myBlue),
          hoverColor: Color(myBlue),
          onTap: () {
            Navigator.push(
                context, SlideTransition1(MainFrame(body: trans_body, title: title,)));
          },
          leading: Icon(
            Icons.keyboard_arrow_right,
            color: Color(myBlue),
          ),
          title: Text(title, style: TextStyle(
            fontFamily: 'Times New Roman',
              color: Color(myBlue))
          ),
        ),
      ),
    );
  }
}


class SlideTransition1 extends PageRouteBuilder {
  final Widget page;

  SlideTransition1(this.page)
      : super(
      pageBuilder: (context, animation, anotherAnimation) => page,
      transitionDuration: const Duration(milliseconds: 2000),
      reverseTransitionDuration: const Duration(milliseconds: 400),
      transitionsBuilder: (context, animation, anotherAnimation, child) {
        animation = CurvedAnimation(
            curve: Curves.fastLinearToSlowEaseIn,
            parent: animation,
            reverseCurve: Curves.fastOutSlowIn);
        return SlideTransition(
          position: Tween(begin: const Offset(1.0, 0.0), end: const Offset(0.0, 0.0))
              .animate(animation),
          child: page,
        );
      }
      );
}

class MainFrame extends StatelessWidget {
  final Widget body;
  final String title;

  const MainFrame(
      {Key? key,
        required this.body,
        required this.title
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF012BB1),
      appBar: AppBar(
        leading: const BackButton(
            color: Color(0xFF012BB1)
        ),
        backgroundColor: Colors.white,
        title: Text(title, style: const TextStyle(color: Color(0xFF012BB1)),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){},
            icon: const Image(image: AssetImage('assets/ecwa_no_bg.png'),),
          )
        ],
      ),
      body: body,
    );
  }
}
