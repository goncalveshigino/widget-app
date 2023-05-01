import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/snackbar/snackbar_screen.dart';

import '../../presentation/screens/screens.dart';


final appRouter = GoRouter(

  initialLocation: '/',

  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) =>const  HomeScreen(),
    ),

     GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) =>const  ButtonsScreen(),
    ),

     GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) =>const  CardsScreen(),
    ),

     GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) =>const  AnimatedScreen(),
    ),

     GoRoute(
      path: '/infinite',
      name: InfiniteScrollScreen.name,
      builder: (context, state) =>const  InfiniteScrollScreen(),
    ),

     GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) =>const  AppTutorialScreen(),
    ),

     GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) =>const  ProgressScreen(),
    ),

     GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.name,
      builder: (context, state) =>const  SnackbarScreen(),
    ),

     GoRoute(
      path: '/uicontrols',
      name: UiControlsScreen.name,
      builder: (context, state) =>const  UiControlsScreen(),
    ),

     GoRoute(
      path: '/counter',
      name: CounterScreen.name,
      builder: (context, state) =>const  CounterScreen(),
    ),

    
  ],
);
