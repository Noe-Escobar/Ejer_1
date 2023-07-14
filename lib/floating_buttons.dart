import 'package:flutter/material.dart';

class FloatingButtons extends StatefulWidget {
  const FloatingButtons(
      {super.key, required this.operacion, required this.child});

  final void Function() operacion;
  final Widget child;

  @override
  State<FloatingButtons> createState() => _FloatingButtonsState();
}

class _FloatingButtonsState extends State<FloatingButtons> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: widget.operacion,
      backgroundColor: const Color.fromARGB(174, 15, 17, 17),
      child: widget.child,
    );
  }
}
