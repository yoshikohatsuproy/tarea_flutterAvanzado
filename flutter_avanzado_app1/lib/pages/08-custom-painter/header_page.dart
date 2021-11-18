import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: CustomPaint(
          painter: _HeaderDiagonal(),
        ),
      ),
    );
  }
}

class _HeaderDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    lapiz.color = Colors.purple;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20.0;

    final path = Path();
    path.lineTo(0, size.height * .35);
    path.lineTo(size.width * .5, size.height * .3);
    path.lineTo(size.width, size.height * .35);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
