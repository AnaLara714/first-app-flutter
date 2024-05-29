import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = HomeController.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Curs flutter')),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (var i = 0; i < 10; i++)
                Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.orange,
                  margin: const EdgeInsets.all(12),
                ),
            ],
          ),
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
