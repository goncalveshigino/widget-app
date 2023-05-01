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
    title: 'Progress Indicators', 
    subtitle: 'Generales y controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded,
  ),

   MenuItem(
    title: 'SnackBar y Dialogos', 
    subtitle: 'Indicadores en Pantalla', 
    link: '/snackbars', 
    icon: Icons.info_outline,
  ),

   MenuItem(
    title: 'Animated Container', 
    subtitle: 'Animated', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_outlined,
  ),

    MenuItem(
    title: 'CheckBox, Radius and others Tiles', 
    subtitle: 'UIControlsScreen', 
    link: '/uicontrols', 
    icon: Icons.car_rental_outlined,
  ),

    MenuItem(
    title: 'Page view', 
    subtitle: 'Page View Screen', 
    link: '/tutorial', 
    icon: Icons.accessible_rounded,
  ),

    MenuItem(
    title: 'Infinite Scroll', 
    subtitle: 'Listas Infinitas e Pull to Refresh', 
    link: '/infinite', 
    icon: Icons.list_alt_rounded,
  ),

];
