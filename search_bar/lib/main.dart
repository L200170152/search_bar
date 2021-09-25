import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Traveloka Search');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customSearchBar,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                } else {
                  customIcon = const Icon(Icons.search);
                  customSearchBar = const Text('My personal Journal');
                }
              });
              if (customIcon.icon == Icons.search) {
                customIcon = const Icon(Icons.cancel);
                customSearchBar = const ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 28,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Tulis lokasi anda saat ini...',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              }
            },
            icon: customIcon,
          )
        ],
        centerTitle: true,
      ),
      body: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Card(
                    color: Colors.white70,
                    child: new Container(
                        //padding: new EdgeInsets.all(10.0),
                        child: new Column(
                            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                          //Padding between these please
                          new Text("Popular cities or aiport",
                              style: new TextStyle(
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black.withOpacity(0.6))),
                        ]))),
                new Card(
                  
                    color: Colors.white70,
                    child: new Container(
                        child: new Column(
                            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                          //Padding between these please
                          new Text("More cities or aiport",
                              style: new TextStyle(
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black.withOpacity(0.6))),
                        ])))
              ])),
    );
  }
}
