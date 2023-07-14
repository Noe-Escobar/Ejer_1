import 'package:flutter/material.dart';
import 'floating_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double contador = 10.00;

  final estilos = const TextStyle(fontSize: 35, fontWeight: FontWeight.w800);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(174, 15, 17, 17),
        title: const Center(
            child: Text(
          'Ejercisio 1',
          textAlign: TextAlign.center,
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Veces que hizo clic', style: estilos),
            const SizedBox(height: 25),
            Text('$contador', style: estilos)
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingButtons(
              operacion: sumar,
              child: const Icon(Icons.exposure_plus_2,
                  color: Color.fromARGB(212, 255, 255, 255)),
            ),
            FloatingButtons(
              operacion: restar,
              child: const Icon(Icons.exposure_neg_2,
                  color: Color.fromARGB(212, 255, 255, 255)),
            ),
            FloatingButtons(
              operacion: dividir,
              child: const Text(
                '/2',
                style: TextStyle(fontSize: 18.5, fontWeight: FontWeight.w500),
              ),
            ),
            FloatingButtons(
              operacion: multiplicar,
              child: const Text(
                'x2',
                style: TextStyle(fontSize: 18.5, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }

  void sumar() {
    setState(() {});
    contador += 2;
  }

  void restar() {
    setState(() {});
    contador -= 2;
  }

  void dividir() {
    setState(() {});
    contador /= 2;
  }

  void multiplicar() {
    setState(() {});
    contador *= 2;
  }
}
