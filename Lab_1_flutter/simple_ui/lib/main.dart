import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lab 1: Flutter'),
          backgroundColor: const Color.fromARGB(255, 122, 212, 4),
        ),
        body: SingleChildScrollView( // added the SingleChillScrollView
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Circular image
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/wheel.png'),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(height: 24),

                // 2x2 Button Layout using Column and Rows
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.grey[300],
                            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                            textStyle: const TextStyle(fontSize: 14),
                          ),
                          child: const Text('BUTTON'),
                        ),
                        const SizedBox(width: 16), // Space between buttons
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.grey[300],
                            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                            textStyle: const TextStyle(fontSize: 14),
                          ),
                          child: const Text('BUTTON'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16), // Space between rows
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.grey[300],
                            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                            textStyle: const TextStyle(fontSize: 14),
                          ),
                          child: const Text('BUTTON'),
                        ),
                        const SizedBox(width: 16), // Space between buttons
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.grey[300],
                            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                            textStyle: const TextStyle(fontSize: 14),
                          ),
                          child: const Text('BUTTON'),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Email input field
                const Row(
                  children: [
                    Text("Email"),
                    SizedBox(width: 16.0), // Add spacing between Text and TextField
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 16.0), // Add right padding to TextField
                        child: TextField(
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
