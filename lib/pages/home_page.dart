import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:white_gold_rose/pages/game_page.dart';
import 'dart:async';

import 'package:white_gold_rose/ui/info_dialog.dart';
import 'package:white_gold_rose/ui/setting_dialog.dart';
import 'package:white_gold_rose/ui/tutorial_dialog.dart';

class GameHomePage extends StatefulWidget {
  const GameHomePage({super.key});

  @override
  State<GameHomePage> createState() => _GameHomePageState();
}

class _GameHomePageState extends State<GameHomePage> {
  Future<void> _dialogBuilder(BuildContext context, String dialog) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        if (dialog == "Settings") {
          return SettingDialog();
        }
        if (dialog == "Tutorial") {
          return TutorialDialog();
        } else {
          return InfoDialog();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: FloatingActionButton(
              onPressed: () => _dialogBuilder(context, "Tutorial"),
              tooltip: 'How To Play',
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                side: BorderSide(width: 4, color: Color(0xff230f46)),
              ),
              child: const Icon(Icons.videogame_asset, size: 32),
            ),
          ),
          FloatingActionButton(
            onPressed: () => _dialogBuilder(context, "About"),
            tooltip: 'About The Game',
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
              side: BorderSide(width: 4, color: Color(0xff230f46)),
            ),
            child: const Icon(Icons.info, size: 32),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: FloatingActionButton(
              onPressed: () => _dialogBuilder(context, "Settings"),
              tooltip: 'Settings',
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                side: BorderSide(width: 4, color: Color(0xff230f46)),
              ),
              child: const Icon(Icons.settings, size: 32),
            ),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Card(
                shadowColor: Color(0xffebddff),
                color: Color(0xffebddff),
                elevation: 32,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  side: BorderSide(width: 4, color: Color(0xff230f46)),
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.3,
                  width: MediaQuery.of(context).size.height / 1.3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: TheGameWidget(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
