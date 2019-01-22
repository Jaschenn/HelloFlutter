// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'category.dart';
// TODO: Check if we need to import anything

// TODO: Define any constants

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    // TODO: Create a list view of the Categories
    final listView = Container(
      child: ListView(
        children: <Widget>[
          Category(name: "小蛋糕", color: Colors.yellow, iconLocation: Icons.cake),
          Category(
              name: "小裙子",
              color: Colors.pink,
              iconLocation: Icons.do_not_disturb_alt),
          Category(
              name: "菜市场",
              color: Colors.purple,
              iconLocation: Icons.access_alarm),
          Category(
              name: "英语", color: Colors.blueAccent, iconLocation: Icons.wifi),
          Category(
              name: "科学",
              color: Colors.blueGrey,
              iconLocation: Icons.wifi_lock),
          Category(name: "art", color: Colors.green, iconLocation: Icons.work),
          Category(
              name: "music",
              color: Colors.pinkAccent,
              iconLocation: Icons.library_music),
          Category(
              name: "execise",
              color: Colors.indigoAccent,
              iconLocation: Icons.border_all),
          Category(
              name: "医学",
              color: Colors.tealAccent,
              iconLocation: Icons.battery_full)
        ],
      ),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(title: Text('分类列表'),backgroundColor: Colors.pinkAccent,);

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
