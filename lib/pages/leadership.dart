import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:alert/alert.dart';

copyAndAlert(data) {
  Clipboard.setData(ClipboardData(text: "$data"))
      .then((value) => Alert(message: "$data COPIED").show());
}

class LeaderShip extends StatelessWidget {
  LeaderShip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        controller: ScrollController(),
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffe6eaf7),
              ),
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      "ECWA Goodnews Durumi II, P.O Box 5813, Garki Abuja",
                      style: TextStyle(
                        color: Color(0xff012bb1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  IconButton(
                    color: const Color(0xff012bb1),
                    onPressed: () {
                      launchUrl(Uri(
                          scheme: 'https',
                          path: 'goo.gl/maps/1pRk6xUQuUprFNpn7'));
                    },
                    icon: const Icon(
                      Icons.map_outlined,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(6.0)),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffe6eaf7)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                      child: Text(
                    "ecwagoodnewsdurumi2@yahoo.com",
                    style: TextStyle(
                      color: Color(0xff012bb1),
                    ),
                    textAlign: TextAlign.center,
                  ))
                ],
              ),
            ),
          )),
          const Padding(padding: EdgeInsets.all(6.0)),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffe6eaf7)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                      child: Text(
                    "ecwagoodnewsdurumi2@gmail.com",
                    style: TextStyle(
                      color: Color(0xff012bb1),
                    ),
                    textAlign: TextAlign.center,
                  ))
                ],
              ),
            ),
          )),
          const Padding(padding: EdgeInsets.all(6.0)),
          Card(
            child: ListTile(
              isThreeLine: true,
              focusColor: const Color.fromARGB(250, 200, 0, 0),
              hoverColor: const Color.fromARGB(250, 200, 0, 0),
              mouseCursor: MouseCursor.defer,
              title: const Text("Rev. Tanimu Danasabe"),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 4,
                    child: Text(
                        "Chairman(Senior Pastor)\n08081988413\n08057549980"),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          copyAndAlert('08057549980');
                        },
                        icon: const Icon(Icons.copy)),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          launchUrl(Uri(scheme: 'tel', path: '08081988413'));
                        },
                        icon: const Icon(Icons.call)),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              isThreeLine: true,
              focusColor: const Color.fromARGB(250, 200, 0, 0),
              hoverColor: const Color.fromARGB(250, 200, 0, 0),
              mouseCursor: MouseCursor.defer,
              title: const Text("Pst. Elisha Dagami Musa"),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 4,
                    child: Text("Vice Chairman(Associate Pastor)\n08064998145"),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          copyAndAlert('08064998145');
                        },
                        icon: const Icon(Icons.copy)),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          launchUrl(Uri(scheme: 'tel', path: '08064998145'));
                        },
                        icon: const Icon(Icons.call)),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              isThreeLine: true,
              focusColor: const Color.fromARGB(250, 200, 0, 0),
              hoverColor: const Color.fromARGB(250, 200, 0, 0),
              mouseCursor: MouseCursor.defer,
              title: const Text("Eld. Titus N. Bitrus"),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 4,
                    child: Text("Secretary\n08055337438"),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          copyAndAlert('08055337438');
                        },
                        icon: const Icon(Icons.copy)),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          launchUrl(Uri(scheme: 'tel', path: '08055337438'));
                        },
                        icon: const Icon(Icons.call)),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              isThreeLine: true,
              focusColor: const Color.fromARGB(250, 200, 0, 0),
              hoverColor: const Color.fromARGB(250, 200, 0, 0),
              mouseCursor: MouseCursor.defer,
              title: const Text("Eld. Christopher Ishaya"),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 4,
                    child: Text("Financial Secretary\n07030803223"),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          copyAndAlert('07030803223');
                        },
                        icon: const Icon(Icons.copy)),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          launchUrl(Uri(scheme: 'tel', path: '07030803223'));
                        },
                        icon: const Icon(Icons.call)),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              isThreeLine: true,
              focusColor: const Color.fromARGB(250, 200, 0, 0),
              hoverColor: const Color.fromARGB(250, 200, 0, 0),
              mouseCursor: MouseCursor.defer,
              title: const Text("Eld. Yusuf Ahmadu"),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 4,
                    child: Text("Treasurer\n08138378832"),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          copyAndAlert('08138378832');
                        },
                        icon: const Icon(Icons.copy)),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          launchUrl(Uri(scheme: 'tel', path: '08138378832'));
                        },
                        icon: const Icon(Icons.call)),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              isThreeLine: true,
              focusColor: const Color.fromARGB(250, 200, 0, 0),
              hoverColor: const Color.fromARGB(250, 200, 0, 0),
              mouseCursor: MouseCursor.defer,
              title: const Text("Eld. Denis T. Yaji"),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 4,
                    child: Text("Worship\n08065551752"),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          copyAndAlert('08065551752');
                        },
                        icon: const Icon(Icons.copy)),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          launchUrl(Uri(scheme: 'tel', path: '08065551752'));
                        },
                        icon: const Icon(Icons.call)),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              isThreeLine: true,
              focusColor: const Color.fromARGB(250, 200, 0, 0),
              hoverColor: const Color.fromARGB(250, 200, 0, 0),
              mouseCursor: MouseCursor.defer,
              title: const Text("Eld. Ibrahim Adamu"),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 4,
                    child: Text("Evangelism\n08069515482"),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          copyAndAlert('08069515482');
                        },
                        icon: const Icon(Icons.copy)),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          launchUrl(Uri(scheme: 'tel', path: '08069515482'));
                        },
                        icon: const Icon(Icons.call)),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              isThreeLine: true,
              focusColor: const Color.fromARGB(250, 200, 0, 0),
              hoverColor: const Color.fromARGB(250, 200, 0, 0),
              mouseCursor: MouseCursor.defer,
              title: const Text("Eld. Musa I. Kajahs"),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 4,
                    child: Text("Works\n08066519985"),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          copyAndAlert('08066519985');
                        },
                        icon: const Icon(Icons.copy)),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          launchUrl(Uri(scheme: 'tel', path: '08066519985'));
                        },
                        icon: const Icon(Icons.call)),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              isThreeLine: true,
              focusColor: const Color.fromARGB(250, 200, 0, 0),
              hoverColor: const Color.fromARGB(250, 200, 0, 0),
              mouseCursor: MouseCursor.defer,
              title: const Text("Eld. Shawulu K. Gata"),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 4,
                    child: Text("Welfare\n08035072554"),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          copyAndAlert('08035072554');
                        },
                        icon: const Icon(Icons.copy)),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          launchUrl(Uri(scheme: 'tel', path: '08035072554'));
                        },
                        icon: const Icon(Icons.call)),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              isThreeLine: true,
              focusColor: const Color.fromARGB(250, 200, 0, 0),
              hoverColor: const Color.fromARGB(250, 200, 0, 0),
              mouseCursor: MouseCursor.defer,
              title: const Text("Eld. Caleb Duniya"),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 4,
                    child: Text("CEE\n08027838944"),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          copyAndAlert('08027838944');
                        },
                        icon: const Icon(Icons.copy)),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        color: const Color(0xff012bb1),
                        onPressed: () {
                          launchUrl(Uri(scheme: 'tel', path: '08027838944'));
                        },
                        icon: const Icon(Icons.call)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
