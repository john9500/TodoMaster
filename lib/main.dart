import 'package:flutter/material.dart';
import 'package:todonew/models/db/db.dart';
import 'package:todonew/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'models/task_data.dart';
import 'package:bot_toast/bot_toast.dart';

void main() {
  Storage();
  TaskData();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: BotToastInit(), //1. call BotToastInit
        navigatorObservers: [BotToastNavigatorObserver()],
        home: Tasks_Screen(),
      ),
    );
  }
}
