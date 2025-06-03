class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp GUI',
      home: Scaffold(
        appBar: AppBar(title: const Text('MyApp')),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              // Use the same business logic as CLI
              await processFiles(inputPath: null, outputPath: null);
            },
            child: const Text('Process Files'),
          ),
        ),
      ),
    );
  }
}
