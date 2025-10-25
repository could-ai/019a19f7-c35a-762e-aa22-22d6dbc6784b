import 'package:flutter/material.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matches'),
         backgroundColor: Colors.transparent,
         elevation: 0,
         titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView.builder(
        itemCount: 8, // Dummy count
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=${index + 10}'),
            ),
            title: Text('Match ${index + 1}'),
            subtitle: const Text('This is your last message.'),
            onTap: () {
              // Navigate to chat screen
            },
          );
        },
      ),
    );
  }
}
