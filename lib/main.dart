import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nasa_app/ui/screens/nasaApp/NasaApp.dart';
import 'package:nasa_app/utils/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(LocalDBConstant.hiveBox);
  runApp(const NasaApp());
}
