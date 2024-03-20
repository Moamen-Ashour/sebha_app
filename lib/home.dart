import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(47, 161, 162, 54),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 191, 0),
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      color: Color.fromARGB(255, 255, 191, 0).withOpacity(.8),
                      spreadRadius: 5,
                      blurRadius: 5,
                    ),
                  ]),
              child: Center(
                child: Container(
                  width: 250,
                  height: 210,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 255, 191, 0).withOpacity(.8),
                  ),
                  child: Center(
                    child: Text(
                      count.toString(),
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -40),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 191, 0),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        color: Color.fromARGB(255, 255, 191, 0).withOpacity(.8),
                        spreadRadius: 5,
                        blurRadius: 5,
                      ),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => counter(),
                      style: ElevatedButton.styleFrom(
                          maximumSize: const Size(190, 190)),
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              Color.fromARGB(255, 255, 191, 0).withOpacity(.8),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () => reset(),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Color.fromARGB(255, 255, 191, 0)
                                .withOpacity(.8)),
                        child: const Text("Reset"))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
