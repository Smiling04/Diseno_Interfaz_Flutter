import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'La vida de los Osos Polares';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          centerTitle: true,
          title: const Text(appTitle),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.star,
                        color: Colors.deepPurpleAccent, size: 30),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Image(
                  image: NetworkImage(
                      'https://st4.depositphotos.com/7402484/28607/i/450/depositphotos_286078764-stock-photo-polar-bear-sunset-arctic-bear.jpg'),
                  height: 400,
                  width: 600,
                  fit: BoxFit.cover,
                ),

                const SizedBox(height: 20),

                const Text(
                  "Descripción",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Los osos polares son grandes mamíferos que viven en el Ártico. "
                  "Son excelentes nadadores y cazan principalmente focas. "
                  "Debido al cambio climático, están actualmente amenazados.",
                  textAlign: TextAlign.justify,
                ),

                const SizedBox(height: 20),

                const Text(
                  "Color:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  children: [
                    colorCircle(Colors.white),
                    const SizedBox(width: 10),
                    colorCircle(Colors.blue),
                    const SizedBox(width: 10),
                    colorCircle(Colors.grey),
                    const SizedBox(width: 10),
                    colorCircle(Colors.black),
                  ],
                ),

                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Viven entre 15 y 30 años",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 69, 159, 175),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.audiotrack,
                        color: Colors.green, size: 30.0),
                    SizedBox(width: 20),
                    Icon(Icons.ac_unit,
                        color: Colors.blue, size: 36.0),
                    SizedBox(width: 20),
                    Icon(Icons.home,
                        color: Colors.pink, size: 36.0),
                  ],
                ),

                const SizedBox(height: 20),

                Center(
                  child: Text(
                    "Son animales solitarios, excelentes nadadores y cazadores especializados en focas, esenciales para su supervivencia. Debido al cambio climático y deshielo, están amenazados. Viven entre 20-30 años, tienen un olfato prodigioso y las hembras son muy protectoras con sus crías.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 15),
                  ),
                ),

                const SizedBox(height: 30),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Añadir al carrito"),
                      ),
                    ),

                    const SizedBox(width: 15),

                    Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Color.fromARGB(255, 182, 11, 11),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget colorCircle(Color color) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}