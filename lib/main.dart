import 'package:flutter/material.dart';
import 'package:flutter_sample/pajes/choose_location.dart';
import 'package:flutter_sample/pajes/home.dart';
import 'package:flutter_sample/pajes/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },

));

