import 'package:flutter/material.dart';
import 'package:gugaportfolio/page/utils/color_scheme_provider.dart';
import 'package:provider/provider.dart';

class SwitchButton extends StatefulWidget {
  SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        thumbColor: const WidgetStatePropertyAll(
          Colors.white,
        ),
        inactiveTrackColor: Colors.yellow[600],
        inactiveThumbColor: Colors.blue,
        activeColor: Colors.indigo[800],
        thumbIcon: WidgetStatePropertyAll(
          _isDarkMode
              ? Icon(
                  Icons.dark_mode,
                  color: Colors.indigo[800],
                )
              : Icon(
                  Icons.light_mode,
                  color: Colors.yellow[600],
                ),
        ),
        value: _isDarkMode,
        onChanged: (value) {
          setState(() {
            _isDarkMode = value;
            Provider.of<ColorSchemeProvider>(context, listen: false).toggleTheme();
          });
        },
      ),
    );
  }
}
