import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plesbol',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Plesbol'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("BERITA TERBARU",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
                SizedBox(width: 30),
                Text("PERTANDINGAN HARI INI",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                  top: BorderSide(color: Color.fromARGB(255, 177, 20, 191)),
                  left: BorderSide(color: Color.fromARGB(255, 177, 20, 191)),
                  right: BorderSide(color: Color.fromARGB(255, 177, 20, 191)),
                  bottom: BorderSide(color: Color.fromARGB(255, 177, 20, 191)),
                )),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Image(image: AssetImage('assets/gvardiol.jpg')),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Gvardiol ke Man City",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      Container(
                        color: const Color.fromARGB(255, 177, 20, 191),
                        width: MediaQuery.of(context).size.width,
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          child: Text(
                            "Transfer",
                            textAlign: TextAlign.left,
                          ),
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
