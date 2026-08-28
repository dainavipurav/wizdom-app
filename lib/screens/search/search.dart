import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return MyCustomWidget();
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    canvas.drawRect(Rect.fromLTWH(100, 50, 50, 100), paint);
    canvas.drawArc(
        Rect.fromCenter(center: Offset(100, 200), width: 50, height: 50),
        50,
        100,
        true,
        paint);
    canvas.drawCircle(Offset(100, 300), 30, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(200, 200),
      painter: MyCustomPainter(),
    );
  }
}
