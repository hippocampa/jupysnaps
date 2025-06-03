import 'dart:io';

import 'package:args/args.dart';

Future<int> handleCLI(List<String> arguments) async {
  final parser = ArgParser()
    ..addOption("input", abbr: "i", help: "Input file path", valueHelp: "path")
    ..addOption(
      "filename",
      abbr: "o",
      help: "Output filename",
      valueHelp: "name",
    )
    ..addFlag(
      "verbose",
      abbr: "v",
      help: "enable verbose output",
      negatable: false,
    )
    ..addFlag("Help", help: "display help", abbr: "h", negatable: false);

  try {
    final result = parser.parse(arguments);
    if (result["help"] as bool) {
      _printHelp(parser);
    }
    return 0;
  } catch (e) {
    stderr.writeln("Error: $e");
    _printHelp(parser);
    return 1;
  }
}

void _printHelp(ArgParser parser) {
  print("""
jupysnaps

Usage:
  jupysnaps [command] [options]
  jupysnaps                             # Launches GUI
  jupysnaps -i input.ipynb -o image.png # CLI Mode

Options:
${parser.usage}

    """);
}
