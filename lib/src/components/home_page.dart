import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = HomeController.of(context);
    final names = ["klayver", "janny", "lara", "jander", "iris", "maria rita"];
    return Scaffold(
      appBar: AppBar(title: Text('Curso flutter')),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(names[index]),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          controller.increment();
        },
      ),
    );
  }
}
