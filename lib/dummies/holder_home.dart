import 'package:flutter/material.dart';

class PlaceholderHomeView extends StatefulWidget {
  const PlaceholderHomeView({super.key});

  @override
  State<PlaceholderHomeView> createState() => _PlaceholderHomeViewState();
}

class _PlaceholderHomeViewState extends State<PlaceholderHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('exxen'),
      ),
    );
  }
}

class PlaceholderHomeView2 extends StatefulWidget {
  const PlaceholderHomeView2({super.key});
  @override
  State<PlaceholderHomeView2> createState() => _PlaceholderHomeView2State();
}

class _PlaceholderHomeView2State extends State<PlaceholderHomeView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
