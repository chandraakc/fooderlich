import 'package:flutter/material.dart';
import '../fooderlich_theme.dart';
import '../models/models.dart';

class Card1 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card1({Key? key, required this.recipe}) : super(key: key);
  //The parameter 'key' can't have a value of 'null' because of its type, but the implicit default value is 'null'.
  //Try adding either an explicit non-'null' default value or the 'required' modifier.

  // The parameter 'recipe' can't have a value of 'null' because of its type, but the implicit default value is 'null'.
  // Try adding either an explicit non-'null' default value or the 'required' modifier.

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(
              recipe.subtitle.toString(),
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                recipe.title.toString(),
                style: FooderlichTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                recipe.message.toString(),
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                recipe.authorName.toString(),
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(recipe.backgroundImage.toString()),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
