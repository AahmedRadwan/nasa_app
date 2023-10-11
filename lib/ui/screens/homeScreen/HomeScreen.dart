import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_app/utils/constants.dart';
import 'package:sizer/sizer.dart';

import '../../../generated/l10n.dart';
import '../../widget/DarkMode/ToggleDarkMode.dart';
import '../../widget/LocalizationMode/ToggleLocalizationMode.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).title),
        actions: const [
          ToggleDarkMode(),
          ToggleLocalizationMode(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 60.w,
              child: ElevatedButton(
                onPressed: () {
                  context.push(RouterConstant.newScreen);
                },
                child:  Text(S.of(context).news_button,style: Theme.of(context).textTheme.labelMedium,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
