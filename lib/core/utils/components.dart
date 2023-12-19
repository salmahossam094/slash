import 'package:flutter/material.dart';

Widget unDefinedPage() {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Slash'),
    ),
    body: const Center(
      child: Column(
        children: [Text('Undefined Path')],
      ),
    ),
  );
}
