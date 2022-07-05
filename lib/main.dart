import 'package:flutter/material.dart';
import 'package:flutter_arch/ioc.dart';
import 'package:flutter_arch/presentation/app.dart';

void main() {
  configureIoc();
  runApp(const App());
}
