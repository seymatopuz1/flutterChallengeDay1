import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black87,
            ),
            onPressed: () {},
          ),
        ),
        // BODY
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Aradığını bulamadın mı?',
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    const SizedBox(height: 5),
                    
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(244, 243, 243, 1), borderRadius: BorderRadius.circular(15)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.black87),
                            hintText: "Ne aramıştınız?",
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Promosyonlu Ürünler',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                
                    const SizedBox(height: 15),
                    Container(
                      height: 200,
                      child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                        promoCard('assets/bisiklet.jpg'),
                        promoCard('assets/Almond by Sohn Won Pyung.jpg'),
                        promoCard('assets/Eski Zamanlar _ Yağlı Boya Tablo.jpg'),
                      ]),),
                    const SizedBox(height: 20), 
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/Eski Zamanlar _ Yağlı Boya Tablo.jpg')),
                      ),
                       child: Container(
                            decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight , 
                                    stops: const [
                                                  0.3,
                                                  0.9],
                                                colors: [
                                          Colors.black.withOpacity(.8),
                                          Colors.black.withOpacity(.2)
                                      ]),
                                      ),
                                      child:const  Align(
                                        alignment: Alignment.bottomLeft,
                                        child:Padding(
                                          padding:  EdgeInsets.all(15.0),
                                          child: Text('En iyi Tasarım',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize:20),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                             ),
                          ),
                        ],  
                      ),
                    ),
                  ),
                );
              }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
        image: DecorationImage(fit: BoxFit.cover,
        image: AssetImage(image)),    
        ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(begin: Alignment.bottomRight , stops: const [
              0.1,
              0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
            ),
          ),
        );
      }
   }
