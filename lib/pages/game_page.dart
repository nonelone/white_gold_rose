import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TheGameWidget extends StatelessWidget {
  const TheGameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: TheGame());
  }
}

class GameWorld extends World {
  @override
  Future<void> onLoad() async {
    await add(Scissors());
  }
}

class TheGame extends FlameGame {
  @override
  Color backgroundColor() => const Color(0x00000000);

  @override
  World world = GameWorld();
}

class Scissors extends SpriteComponent {
  Scissors() : super(size: Vector2.all(500));

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('assets/game/scissors.png');
  }
}
