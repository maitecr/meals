// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../components/main_drawer.dart';
import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  var settings = Settings();

  Widget _createSwitch(String title, String subtitle, bool value, Function(bool)? onChanged) {
    return SwitchListTile.adaptive(
      title: Text(title),
      value: value, 
      onChanged: onChanged,
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.titleLarge,
              ),
          ),
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  'Sem Glutem', 
                  'Só exibe refeições sem glutem',
                   settings.isGlutenFree,
                   (value) => setState(() => settings.isGlutenFree = value)
                ),
                _createSwitch(
                  'Sem Lactose', 
                  'Só exibe refeições sem lactose',
                   settings.isLactoseFree,
                   (value) => setState(() => settings.isLactoseFree = value)
                ),
                _createSwitch(
                  'Vegana', 
                  'Só exibe refeições veganas',
                   settings.isVegan,
                   (value) => setState(() => settings.isVegan = value)
                ),
                _createSwitch(
                  'Vegetariano', 
                  'Só exibe refeições vegetariana',
                   settings.isVegetarian,
                   (value) => setState(() => settings.isVegetarian = value)
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}