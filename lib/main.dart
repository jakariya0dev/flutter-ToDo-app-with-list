import 'package:flutter/material.dart';
import 'package:todo_app/cart.dart';
import 'package:todo_app/model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Text('Pending Task'),
            Expanded(
              child: ListView.builder(
                  itemCount: Model.taskList.length,
                  itemBuilder: (context, index) {
                    return Cart(
                      index: index,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
