import 'package:flutter/material.dart';

class StateContainer extends StatelessWidget {
  const StateContainer({super.key, this.underlineColor, this.widget});
  final Color? underlineColor;

  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: underlineColor,
      ),
      child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(2.0),
                bottomRight: Radius.circular(2.0)),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: widget,
          )),
    );
  }
}
