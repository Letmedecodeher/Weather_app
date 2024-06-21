import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String username;

    void getData()async{
      Response response = await get("https://mytimeapi.herokuapp.com/time/Asia/Kolkata");
      print(response.body);
    }

  int counter = 1;
  @override
  void initState() {
    super.initState();
    print("this is init state");
  }
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    print("Set state called");
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Widget destroyed");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Activity"),
      ),
      body:
          Column(
            children: <Widget>[
              FloatingActionButton(
                onPressed: () => setState(() {
                  counter += 1;
                }),
              ),
              Text("$counter")
            ],
          )

    );
  }
}
