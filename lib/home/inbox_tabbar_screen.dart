import 'package:flutter/material.dart';

import '../consts/colors.dart';

class InboxTabbarScreen extends StatefulWidget {
  const InboxTabbarScreen({super.key});

  @override
  State<InboxTabbarScreen> createState() => _InboxTabbarScreenState();
}

class _InboxTabbarScreenState extends State<InboxTabbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: Column(
            children: <Widget>[
          const SizedBox(height: 10),
        ]));
  }
}
