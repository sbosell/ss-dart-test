import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:servicestack/servicestack.dart';

import 'app_data.dart';
import 'dtos.dart';

void main() {
  runApp(MultiProvider(providers: [
    Provider<AppData>(create: (_) => AppData()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class Test1 extends StatefulWidget {
  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Test 1 - Return Type List<>"),
      ),
      body: FutureBuilder(
          future: context.select((AppData x) => x).getLocations(),
          builder: (context, AsyncSnapshot<List<LocationDtoShort>> snap) {
            if (!snap.hasData) return CircularProgressIndicator();
            if (snap.hasError) return Text(snap.error.toString());
            return snap.data == null
                ? Container()
                : ListView.builder(
                    itemBuilder: (context, index) {
                      var item = snap.data[index];
                      return InkWell(
                          onTap: () {},
                          child: ListTile(title: Text(item.Name)));
                    },
                    itemCount: snap.data != null ? snap.data.length : 0,
                  );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Test2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Test 2 - QueryResponse"),
      ),
      body: FutureBuilder(
          future: context.select((AppData x) => x).getLocationsAutoQuery(),
          builder:
              (context, AsyncSnapshot<QueryResponse<LocationDtoShort>> snap) {
            if (!snap.hasData) return CircularProgressIndicator();
            if (snap.hasError) return Text(snap.error.toString());
            return snap.data == null
                ? Container(child: Text("Data is null"))
                : ListView.builder(
                    itemBuilder: (context, index) {
                      var item = snap.data.results[index];
                      return InkWell(
                          onTap: () {},
                          child: ListTile(title: Text(item.Name)));
                    },
                    itemCount: snap.data != null ? snap.data.total : 0,
                  );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Test3 extends StatefulWidget {
  @override
  _Test3State createState() => _Test3State();
}

class _Test3State extends State<Test3> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Tests"),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Test1();
                  }));
                },
                child: Text("Test 1 List<>")),
            FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Test2();
                  }));
                },
                child: Text("Test 2 QueryResponse"))
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
