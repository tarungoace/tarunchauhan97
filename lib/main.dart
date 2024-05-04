import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tarundevindia/tarun_dev_india_web.dart';
import 'package:tarundevindia/provider/providers.dart';

Future<void> main() async {
  final container = await initApp();

  runApp(
    ProviderScope(
      parent: container,
      child: const TarunDevIndiaApp(),
    ),
  );
}
