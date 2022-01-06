import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  const BlueButton({
    Key? key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blue,
      elevation: 2,
      highlightElevation: 5,
      shape: const StadiumBorder(),
      onPressed: onPressed ?? () {},
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(
            text ?? '',
            style: const TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
