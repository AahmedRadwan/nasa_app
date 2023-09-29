import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nasa_app/utils/constants.dart';

class ToggleDarkMode extends StatelessWidget {
  const ToggleDarkMode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box(LocalDBConstant.hiveBox).listenable(),
      builder: (context, box, widget) {
        bool darkMode = box.get(LocalDBConstant.darkMode, defaultValue: false);
        return IconButton.filledTonal(
          onPressed: () {
            box.put(LocalDBConstant.darkMode, !darkMode);
          },
          icon:
              darkMode ? const Icon(Icons.nightlight) : const Icon(Icons.sunny),
        );
      },
    );
  }
}
