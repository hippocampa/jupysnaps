import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jupysnaps/cli/cli_handler.dart';
import 'package:jupysnaps/gui/app.dart';

void main(List<String> arguments) async {
  if (arguments.isEmpty) {
    await _launchGUI();
  } else {
    final exitCode = await handleCLI(arguments);
    exit(exitCode);
  }
}

Future<void> _launchGUI() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}
