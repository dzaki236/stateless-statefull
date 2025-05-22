import 'package:flutter/material.dart';

class StatefullW extends StatefulWidget {
  const StatefullW({super.key});

  @override
  State<StatefullW> createState() => _StatefullWState();
}

class _StatefullWState extends State<StatefullW> {
  final TextEditingController textController = TextEditingController();
  String texts = '';
  @override
  void dispose() {
    // TODO: implement dispose
    textController.dispose();
    super.dispose();
  }

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
                    setState(() {
                      texts = value;
                    });
                  },
                ),
                SizedBox(height: 20),
                Text(texts, style: TextStyle(fontSize: 22)),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(title: Text('Test 2')),
    );
  }
}
