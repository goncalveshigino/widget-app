import 'package:flutter/material.dart';

class MenuItem {

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

 const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon
  });

}

const appMenuItems = <MenuItem> [

  MenuItem(
    title: 'Botones', 
    subtitle: 'Varios botones en Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined,
  ),

   MenuItem(
    title: 'Tarjetas', 
    subtitle: 'Un Conetenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card,
  ),

    MenuItem(
    title: 'ProgressIndicators', 
    subtitle: 'Generales y controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded,
  ),

];
