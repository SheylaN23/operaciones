import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Operaciones'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Calculadora",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Campo Primer Número
                    TextField(
                      controller: num1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Ingrese primer número",
                        prefixIcon: const Icon(Icons.looks_one),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Campo Segundo Número
                    TextField(
                      controller: num2,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Ingrese segundo número",
                        prefixIcon: const Icon(Icons.looks_two),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Fila de Botones: Sumar y Restar
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: sumar,
                            icon: const Icon(Icons.add),
                            label: const Text("Sumar"),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: restar,
                            icon: const Icon(Icons.remove),
                            label: const Text("Restar"),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // Fila de Botones: Multiplicar y Dividir
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: multiplicar,
                            icon: const Icon(Icons.close),
                            label: const Text("Multiplicar"),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: dividir,
                            icon: const Icon(Icons.horizontal_rule),
                            label: const Text("Dividir"),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Contenedor del Resultado
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Resultado: $resultado",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void sumar() {
    double n1 = double.tryParse(num1.text) ?? 0;
    double n2 = double.tryParse(num2.text) ?? 0;
    setState(() {
      resultado = n1 + n2;
    });
  }

  void restar() {
    double n1 = double.tryParse(num1.text) ?? 0;
    double n2 = double.tryParse(num2.text) ?? 0;
    setState(() {
      resultado = n1 - n2;
    });
  }

  void multiplicar() {
    double n1 = double.tryParse(num1.text) ?? 0;
    double n2 = double.tryParse(num2.text) ?? 0;
    setState(() {
      resultado = n1 * n2;
    });
  }

  void dividir() {
    double n1 = double.tryParse(num1.text) ?? 0;
    double n2 = double.tryParse(num2.text) ?? 0;
    setState(() {
      resultado = n2 == 0 ? 0 : n1 / n2;
    });
  }
}