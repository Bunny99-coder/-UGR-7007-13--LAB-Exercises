import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String? dataFromScreenOne =
        ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (dataFromScreenOne != null) // Check if data exists
              Text('Data received from ScreenOne: $dataFromScreenOne'),
            ElevatedButton(
              child: const Text('Back (Send Data)'),
              onPressed: () {
                // ... existing code to handle button press
                Navigator.pop(
                    context, 'Data from ScreenTwo!'); // Send data back
              },
            ),
          ],
        ),
      ),
    );
  }
}
