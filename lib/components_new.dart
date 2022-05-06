import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComponentsNew extends StatefulWidget {
  const ComponentsNew({Key? key}) : super(key: key);

  @override
  State<ComponentsNew> createState() => _ComponentsNewState();
}

enum SingingCharacter { Masculino, Feminino }

class _ComponentsNewState extends State<ComponentsNew> {
  SingingCharacter? character = SingingCharacter.Masculino;
  bool checkb = false;
  bool switchb = false;
  double currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Components da aula de hoje: CheckboxListTil'
            'e, RadioListTile, SwitchListTile e Slider',
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
                'Components da aula de hoje: CheckboxListTile, RadioList'
                'Tile, SwitchListTile e Slider',
                textAlign: TextAlign.center),
            const Text('CheckboxListTile', textAlign: TextAlign.center),
            CheckboxListTile(
              title: const Text(
                  'Comida Brasileira A comida Brasileira é referência no mundo!'),
              value: checkb,
              onChanged: (bool? newValue) {
                setState(() {
                  checkb = newValue!;
                });
              },
            ),
            Column(
              children: [
                const Text('RadioListTile'),
                RadioListTile(
                  title: const Text('Masculino'),
                  value: SingingCharacter.Masculino,
                  groupValue: character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      character = value;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Feminino'),
                  value: SingingCharacter.Feminino,
                  groupValue: character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      character = value;
                    });
                  },
                )
              ],
            ),
            SwitchListTile(
              title: const Text('Chave seletora'),
              value: switchb,
              onChanged: (bool value) {
                setState(() {
                  switchb = value;
                });
              },
            ),
            const Text('Componente Slider'),
            Slider(
                value: currentSliderValue,
                max: 100,
                divisions: 5,
                onChanged: (double value) {
                  setState(() {
                    currentSliderValue = value;
                  });
                }
            )
          ],
        ),
      ),
    );
  }
}
