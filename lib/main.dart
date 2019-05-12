import 'package:flutter/material.dart';

import './ui/welcome_home.dart';
import './ui/toolbar.dart';
import './ui/makeItRain.dart';
import './ui/login.dart';

void main() {
  runApp( new MaterialApp(
      title:'welcome',
      home: new Login(),
  )
  );
}

