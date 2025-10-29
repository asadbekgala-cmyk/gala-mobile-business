import 'package:flutter/material.dart';

import 'package:gala_business/core/extension/extension.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => CatalogScreenState();
}

class CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Order Screen",
          style: context.style.fontSize18Weight400,
        ),
      ),
    );
  }
}
