// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:genotechies_app/provider/google.dart';
import 'package:provider/provider.dart';

class LoggedInWidget extends StatelessWidget {
  const LoggedInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Our Shops',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: const Icon(Icons.dehaze),
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.logout();
                  });
            },
          ),

          // Change the app name
          title: const Text("Our Shops"),
        ),
        body: SafeArea(
            child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20, 20, 20, 20),
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://www.etch.com/app/files/public/946f26e0-7d4f-4274-8217-d1b57898998d/Gift%20Shop/Gift_Shop_Photo_2021_400.jpg',
                              width: 100,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Text(
                          'Gift Shop',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 0),
                            child: Text(
                              'Location: Badulla badulupitiya',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.red[400],
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.agriculture_sharp,
                              color: Colors.black,
                              size: 12.0,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Text(
                                'Tap to view products',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.bike_scooter,
                              color: Colors.black,
                              size: 12.0,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Text(
                                'Between 2-4 days island wide delivery',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20, 20, 20, 20),
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://www.ft.com/__origami/service/image/v2/images/raw/https://d1e00ek4ebabms.cloudfront.net/production/77b41724-a1a7-464f-8135-fc7e0f7cec12.jpg?source=next&amp;fit=scale-down&amp;quality=highest&amp;width=1067',
                              width: 100,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Text(
                          'Book Shop',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 0),
                            child: Text(
                              'Location: hanwella badulupitiya',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.red[400],
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.agriculture_sharp,
                              color: Colors.black,
                              size: 12.0,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Text(
                                'Tap to view products',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.bike_scooter,
                              color: Colors.black,
                              size: 12.0,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Text(
                                'Between 2-4 days island wide delivery',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20, 20, 20, 20),
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1559038600-39f2e61cb59a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGZydWl0JTIwc2hvcHxlbnwwfHwwfHw%3D&w=1000&q=80',
                              width: 100,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Text(
                          'Fruit Shop',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 0),
                            child: Text(
                              'Location: Rajagiriya Colombo',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.red[400],
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.agriculture_sharp,
                              color: Colors.black,
                              size: 12.0,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Text(
                                'Tap to view products',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.bike_scooter,
                              color: Colors.black,
                              size: 12.0,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Text(
                                'Between 2-4 days island wide delivery',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ])))));
  }
}
