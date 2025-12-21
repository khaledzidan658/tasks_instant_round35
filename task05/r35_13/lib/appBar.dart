import 'package:flutter/material.dart';

class bar extends StatelessWidget implements PreferredSizeWidget {
  const bar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('BMI Calculator', style: TextStyle(color: Colors.white)),
      centerTitle: true,
      backgroundColor: Color(0xff0b0e21),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
