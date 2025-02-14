import 'package:flutter/material.dart';

class AdvancedStructure extends StatelessWidget {
  const AdvancedStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar widget to display the app bar at the top of the screen
      appBar: AppBar(title: const Text("Advanced FLUTER Widget Tree")),

      // Center widget to center the content on the screen
      body: Center(
        // SingleChildScrollView allows scrolling when content exceeds the screen size
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text widget to display text
              const Text("Advanced Widgets Example"),

              // Image widget to display a local image asset
              Image.asset(
                'assets/flutter_logo.jpg',
                width: 100,
                height: 100,
              ),

              // Card widget with elevation and shadow
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text("This is a Card with elevation"),
                ),
              ),

              // Container with gradient background
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green],
                  ),
                ),
                child: const Text("Container with gradient background"),
              ),

              // ToggleButtons for multiple choice options
              ToggleButtons(
                children: const <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.call),
                  Icon(Icons.cake),
                ],
                onPressed: (int index) {},
                isSelected: [false, true, false],
              ),

              // Slider widget for selecting a value within a range
              Slider(
                value: 50,
                min: 0,
                max: 100,
                divisions: 10,
                label: "Slider Value",
                onChanged: (double value) {},
              ),

              // ExpansionTile to display expandable content
              ExpansionTile(
                title: const Text("Expansion Tile"),
                children: <Widget>[
                  ListTile(title: const Text("Expanded Content 1")),
                  ListTile(title: const Text("Expanded Content 2")),
                ],
              ),

              // Stepper widget for step-by-step form
              Stepper(
                steps: const <Step>[
                  Step(
                      title: Text("Step 1"),
                      content: Text("Content for Step 1")),
                  Step(
                      title: Text("Step 2"),
                      content: Text("Content for Step 2")),
                  Step(
                      title: Text("Step 3"),
                      content: Text("Content for Step 3")),
                ],
                currentStep: 0,
                onStepTapped: (int step) {},
                onStepContinue: () {},
                onStepCancel: () {},
              ),

              // DatePicker to select a date
              ElevatedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                },
                child: const Text("Select Date"),
              ),

              // FutureBuilder to fetch and display data asynchronously
              FutureBuilder<String>(
                future: Future.delayed(
                    const Duration(seconds: 2), () => "Fetched Data"),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return const Text("Error fetching data");
                  } else {
                    return Text("Data: ${snapshot.data}");
                  }
                },
              ),

              // StreamBuilder to display real-time data
              StreamBuilder<int>(
                stream: Stream.periodic(
                    const Duration(seconds: 1), (count) => count).take(10),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return const Text("Error fetching stream data");
                  } else {
                    return Text("Stream Data: ${snapshot.data}");
                  }
                },
              ),

              // Divider to create a horizontal line
              const Divider(),

              // CircularProgressIndicator for loading indication
              const CircularProgressIndicator(),

              // LinearProgressIndicator for loading indication
              const LinearProgressIndicator(),

              // Checkbox for boolean input
              Checkbox(
                value: true,
                onChanged: (bool? value) {},
              ),

              // Switch for boolean input
              Switch(
                value: true,
                onChanged: (bool value) {},
              ),

              // Radio buttons for selecting one of many options
              Column(
                children: <Widget>[
                  Radio<int>(
                    value: 1,
                    groupValue: 1,
                    onChanged: (int? value) {},
                  ),
                  Radio<int>(
                    value: 2,
                    groupValue: 1,
                    onChanged: (int? value) {},
                  ),
                ],
              ),

              // DropdownButton for selecting an option from a dropdown menu
              DropdownButton<String>(
                value: "Option 1",
                items: const <DropdownMenuItem<String>>[
                  DropdownMenuItem(
                    value: "Option 1",
                    child: Text("Option 1"),
                  ),
                  DropdownMenuItem(
                    value: "Option 2",
                    child: Text("Option 2"),
                  ),
                ],
                onChanged: (String? value) {},
              ),

              // SnackBar to show temporary messages
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("This is a SnackBar")),
                  );
                },
                child: const Text("Show SnackBar"),
              ),

              // Tooltip to provide additional information
              Tooltip(
                message: "This is a Tooltip",
                child: const Icon(Icons.info),
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
