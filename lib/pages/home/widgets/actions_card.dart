import 'package:flutter/material.dart';

class ActionsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 30.0,
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _circle(w: 60.0, h: 60.0, path: "assets/close.png"),
          _circle(w: 70.0, h: 70.0, path: "assets/estrella.png"),
          _circle(w: 60.0, h: 60.0, path: "assets/me-gusta.png"),
        ],
      ),
    );
  }

  Widget _circle({
    required double w,
    required double h,
    required String path,
  }) {
    return Container(
      width: w,
      height: h,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Image.asset(path),
    );
  }
}
