import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  final String imageAddress;

  const ImageBox({Key? key, required this.imageAddress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        color: Colors.grey[600],
        child: Image.asset(
          imageAddress,
          width: double.infinity,
        ),
      ),
    );
  }
}
