import 'package:flutter/material.dart';

import 'package:gala_business/core/extension/extension.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => DetailScreenState();
}

class DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Navigation Screen",
          style: context.style.fontSize18Weight400,
        ),
      ),
    );
  }
}
