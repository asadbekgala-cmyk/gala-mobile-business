import 'package:flutter/material.dart';

import 'package:gala_business/core/extension/extension.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => OrderScreenState();
}

class OrderScreenState extends State<OrderScreen> {
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
