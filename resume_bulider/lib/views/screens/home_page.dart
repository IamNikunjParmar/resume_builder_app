import 'package:flutter/material.dart';
import 'package:resume_bulider/utils/routes_utils.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Text("Create New Resume",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),

          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () =>
          Navigator.of(context).pushNamed(Myroutes.resumeWorkspace),
        child: const Icon(Icons.add,
        color: Colors.white,
        ),
      ),
    );
  }
}
