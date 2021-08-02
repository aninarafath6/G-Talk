import 'package:flutter/material.dart';
import 'package:g_talk/app/modules/home/views/pages/home/chatlist.dart';
import 'package:g_talk/app/modules/home/views/widgets/buildAppbar_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: buildAppbar(screenwidth),
      body: ChatList(),
    );
  }
}
