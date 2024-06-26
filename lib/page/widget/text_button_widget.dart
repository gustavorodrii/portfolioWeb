// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextButtonWidget extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  const TextButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  State<TextButtonWidget> createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Text(
        widget.text,
        style: GoogleFonts.passionOne(
          fontSize: 22,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
      ),
    );
  }
}
