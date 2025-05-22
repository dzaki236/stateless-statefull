
import 'package:flutter/material.dart';

class WrongStatefulW extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  String texts = '';

  WrongStatefulW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Name'),
                  controller: textController,
                  onChanged: (value) {
                    texts = value;
                  },
                ),
                SizedBox(height: 20),
                Text(texts, style: TextStyle(fontSize: 22)),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(title: Text('Test 3')),
    );
  }
}
