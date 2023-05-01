import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, palne, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionais'),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),
        ExpansionTile(
          title: const Text('Veiculo e transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar por Carro'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Viajar por Barco'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar por Aviao'),
              value: Transportation.palne,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.palne;
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar por Submarino'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            ),
          ],
        ),
       
       
        CheckboxListTile(
          title: const Text('Matabicho'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
         CheckboxListTile(
          title: Text('Almoco'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
         CheckboxListTile(
          title: Text('Jantar'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ), 

      ],
    );
  }
}
