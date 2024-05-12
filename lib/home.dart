import 'package:flutter/material.dart';
import 'package:afa_calculator_flutter/utils/functions/calculates_grade.dart';
import 'package:afa_calculator_flutter/utils/widgets/my_custom_input.dart';
import 'package:afa_calculator_flutter/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController portuguesController = TextEditingController();
  final TextEditingController matematicaController = TextEditingController();
  final TextEditingController inglesController = TextEditingController();
  final TextEditingController fisicaController = TextEditingController();
  final TextEditingController totalGrade = TextEditingController();

  @override
  void dispose() {
    portuguesController.dispose();
    matematicaController.dispose();
    inglesController.dispose();
    fisicaController.dispose();
    totalGrade.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text(
                            'Dia 1',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: MyCustomInput(
                                controller: portuguesController,
                                labelText: 'Português',
                                icon: const Icon(Icons.book_rounded),
                              ),
                            ),
                            Expanded(
                              child: MyCustomInput(
                                controller: matematicaController,
                                labelText: 'Matemática',
                                icon: const Icon(Icons.numbers_rounded),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: MyCustomInput(
                                controller: inglesController,
                                labelText: 'Inglês',
                                icon: const Icon(Icons.abc_rounded),
                              ),
                            ),
                            Expanded(
                              child: MyCustomInput(
                                controller: fisicaController,
                                labelText: 'Física',
                                icon: const Icon(Icons.science_rounded),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text(
                            'Sua Nota',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              TextFormField(
                                enabled: false,
                                controller: totalGrade,
                                decoration: InputDecoration(
                                  labelText: 'Total',
                                  labelStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight:
                                          FontWeight.bold), // Texto em negrito
                                  prefixIcon: const Icon(
                                    Icons.calculate_outlined,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  // Para centralizar o campo, você pode usar MainAxisAlignment.center no Column
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                          ),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  redColor),
                                        ),
                                        onPressed: () {
                                          portuguesController.clear();
                                          matematicaController.clear();
                                          inglesController.clear();
                                          fisicaController.clear();
                                          totalGrade.clear();
                                        },
                                        child: const Text(
                                          'Limpar',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                          ),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  mainColor),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            totalGrade.text = calculateGrade(
                                              int.parse(
                                                  portuguesController.text),
                                              int.parse(
                                                  matematicaController.text),
                                              int.parse(inglesController.text),
                                              int.parse(fisicaController.text),
                                            ).toString();
                                          });
                                        },
                                        child: const Text(
                                          'Calcular',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
