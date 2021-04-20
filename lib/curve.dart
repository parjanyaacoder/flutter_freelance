import 'package:flutter/material.dart';

class PageCurve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
       child: Container(
         height: 100,
       ),
      painter: CurvePainter(),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint()
      ..color = Colors.grey[700].withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

     path.moveTo(size.width * 1.1, size.height * 2.45);
     // path.lineTo(size.width ,size.height);
    path.cubicTo(size.width, size.height * 0.2, size.width * 0.65, size.height * 1.73,size.width * 0.45,size.height * 0.001 - size.height * 0.31);
    path.moveTo(size.width * 1.1, size.height * 1.85);
     path.cubicTo(size.width, size.height * 0.3, size.width * 0.56 , size.height * 1.4, size.width * 0.58,size.height * 0.004 - size.height * 0.31);
     path.moveTo(size.width * 1.1, size.height * 0.99);
     path.quadraticBezierTo(size.width * 0.80, size.height * 0.95, size.width * 0.63, size.height * 0.04 - size.height * 0.31);
     path.moveTo(size.width * 1.1, size.height * 0.65);
      path.quadraticBezierTo(size.width * 1.05, size.height * 1.2, size.width * 0.75, size.height * 0.02 - size.height * 0.31);
      path.moveTo(size.width * 1.1, size.height * 0.4);
      path.lineTo(size.width * 0.89, -12.0);
      path.close();

    canvas.drawPath(path,paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}

