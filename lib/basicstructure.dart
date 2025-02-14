import 'package:flutter/material.dart';

class BasicStructure extends StatelessWidget {
  const BasicStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar widget to display the app bar at the top of the screen
      appBar: AppBar(title: const Text("Flutter Widget Tree")),

      // Center widget to center the content on the screen
      body: Center(
        // SingleChildScrollView allows scrolling when content exceeds the screen size
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text widget to display text
              const Text("aninwan"),

              // Container widget to create a box with styling
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.blue,
                child: const Text("Container with padding and color"),
              ),

              // Image widget to display an image from the network
              Image.network(
                'https://th.bing.com/th/id/R.599374cd00c0636a8bb8de28e33cb151?rik=gp93XXbxSOBe6Q&pid=ImgRaw&r=0',
                width: 100,
                height: 100,
              ),

              // ElevatedButton widget for a button
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/advancedwidget');
                },
                child: const Text("Advance widget"),
              ),

              // IconButton widget to display an icon button
              IconButton(
                icon: const Icon(Icons.thumb_up),
                onPressed: () {},
              ),

              // Row widget for horizontal layout
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Row Item 1"),
                  const SizedBox(width: 10), // SizedBox for spacing
                  const Text("Row Item 2"),
                ],
              ),

              // Column widget for vertical layout
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Column Item 1"),
                  const SizedBox(height: 10), // SizedBox for spacing
                  const Text("Column Item 2"),
                ],
              ),

              // Stack widget for overlapping layout
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  const Text("Stacked Text"),
                ],
              ),

              // ListView widget for scrolling list of items
              SizedBox(
                height: 100,
                child: ListView(
                  children: const <Widget>[
                    ListTile(title: Text("List Item 1")),
                    ListTile(title: Text("List Item 2")),
                    ListTile(title: Text("List Item 3")),
                  ],
                ),
              ),

              // GridView widget for grid layout
              SizedBox(
                height: 200,
                child: GridView.count(
                  crossAxisCount: 2, // Number of columns
                  children: const <Widget>[
                    Card(child: Center(child: Text("Grid Item 1"))),
                    Card(child: Center(child: Text("Grid Item 2"))),
                    Card(child: Center(child: Text("Grid Item 3"))),
                    Card(child: Center(child: Text("Grid Item 4"))),
                  ],
                ),
              ),

              // Form widget with TextFormField for user input
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Enter your name",
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Submit"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // FloatingActionButton widget for a floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
