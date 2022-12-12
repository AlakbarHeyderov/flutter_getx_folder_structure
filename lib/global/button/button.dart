import 'package:flutter/material.dart';

import '../color/colors.dart';
import '../font/font.dart';

class ProjectButton extends StatelessWidget {
  String title;
  Function()? onPressed;
  bool dark;
  ProjectButton({
    required this.title,
    required this.onPressed,
    this.dark = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 42,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: dark ? FontPath.regular15White : FontPath.regular15,
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
          dark ? ProjectColors.floatActionButtonColor : ProjectColors.colorE5,
        )),
      ),
    );
  }
}
