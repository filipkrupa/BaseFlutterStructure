
import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {

  final String _assethPath;

  ImageBanner(this._assethPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.00,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child:
      Image.asset(_assethPath,
      fit: BoxFit.cover,
      )
    );
  }
}