import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../generated/l10n.dart';
import '../../../utils/constants.dart';

enum SampleItem { EN, AR }

class ToggleLocalizationMode extends StatelessWidget {
  const ToggleLocalizationMode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box(LocalDBConstant.hiveBox).listenable(),
      builder: (context, box, widget) {
        return Row(
          children: [
            PopupMenuButton<SampleItem>(
              onSelected: (SampleItem item) {
                box.put(LocalDBConstant.localizationMode,
                    item == SampleItem.AR ? "ar" : "en");
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SampleItem>>[
                 PopupMenuItem<SampleItem>(
                  value: SampleItem.EN,
                  child: Text(S.of(context).lang_en),
                ),
                 PopupMenuItem<SampleItem>(
                  value: SampleItem.AR,
                  child: Text(S.of(context).lang_ar),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
