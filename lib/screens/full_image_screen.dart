import 'dart:io';
import 'package:flutter/material.dart';

class FullImageScreen extends StatelessWidget {
  final String imageUrl;

  const FullImageScreen({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Full Image')),
      body: Center(
        child: Hero(
          tag: imageUrl,
          child: Image.file(File(imageUrl)),
        ),
      ),
    );
  }
}
