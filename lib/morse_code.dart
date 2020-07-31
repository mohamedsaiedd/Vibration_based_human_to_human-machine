// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// 
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vibration/vibration.dart';
import 'package:morse/morse.dart';

class MorseGuide extends StatefulWidget {
  MorseGuide({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MorseGuideState createState() => _MorseGuideState();
}

class _MorseGuideState extends State<MorseGuide> {



void _a() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'A';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _b() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'b';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _c() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'c';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _d() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'd';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _e() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'e';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _f() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'f';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _g() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'g';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _h() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'h';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _i() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'i';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _j() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'j';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _k() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'k';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _l() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'l';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _m() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'm';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
void _n() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'n';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _o() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'o';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _p() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'p';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _q() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'q';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _r() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'r';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _s() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 's';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _t() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 't';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _u() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'u';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _v() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'v';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _w() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'w';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern =  [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _x() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'x';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _y() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'y';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  void _z() {
    setState(() async {
      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'z';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }
 print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  @override
  Widget build(BuildContext context) {
     Widget _myWidget(BuildContext context) {
      return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          // set the default style for the children TextSpans
          style: Theme.of(context).textTheme.body1.copyWith(fontSize: 30),
          children: [
            TextSpan(
                text: '''Enjoy ''',
                style: TextStyle(
                color: Colors.blue[700],
                fontWeight: FontWeight.bold,
              )
            ),
            TextSpan(
              text: 'Your life \n',
              style: TextStyle(
                color: Colors.blue[700],
                fontWeight: FontWeight.w100,
              )
            ),
          TextSpan(
              text: 'We Are Here For You',
              style: TextStyle(
                color: Colors.blue[700],
                fontSize: 13,
                fontWeight: FontWeight.w100,
                letterSpacing:3.0,
              )
            ),
          ]
          
        )
      );
    }
    
  //  final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return  Center(
        child: Material(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0,70,0,0),
              child: Text( 'Morse Guide',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue[700],
                  fontWeight: FontWeight.w100,
                )),
            ),
              Expanded(child:
                
                  CarouselSlider(
                    autoPlayInterval:Duration(seconds: 4),
                        height: 550.0,
                        items: ['A\n .- ','B\n -...','C\n -.-.','D\n-..','E\n .'
                                ,'F\n ..-. ','G\n --.','H\n ....','I\n..','J\n .---'
                                ,'K\n -.- ','L\n .-..','M\n --','N\n-.','O\n ---'
                                ,'P\n .--. ','Q\n --.-','R\n .-','S\n...','T\n -'
                                ,'U\n ..- ','V\n ..-','W\n .--','X\n-..-','Y\n -.--'
                                ,'Z\n --.. ',
                                ].map((f) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue[700]
                                ),
                                child: Center(child:GestureDetector(
                                  onTap : _a,
                                  child: Text(' $f', style: TextStyle(fontSize: 60.0 , color:  Colors.white,),))
                               ) );
                            },
                          );
                        }).toList(),
                        ),
              
              ),
               Padding(
               padding: const EdgeInsets.fromLTRB(0,0,0,70),
               child: Form(child: _myWidget(context)),
             ),
            ],
          ),
        ),
      
    );
  }
}


