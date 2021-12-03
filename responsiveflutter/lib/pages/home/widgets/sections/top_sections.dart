import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsiveflutter/breakpoints.dart';
import 'package:responsiveflutter/pages/home/widgets/custom_search_field.dart';
class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          final maxWidth = constraints.maxWidth;
          if(maxWidth >= 1200){
            return AspectRatio(
                aspectRatio: 3.2,
                child: Stack(
                  children: [
                    LayoutBuilder(
                        builder: (context, constraints){
                            print('smallet: ${constraints.smallest} biggest: ${constraints.biggest} ');
                            return Image.network('assets/capa_curso.png', fit: BoxFit.cover);
                    }),
                    Positioned(
                        left: 50,
                        top: 50,
                        child: Card(
                          color: Colors.black,
                          elevation: 8,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            width: 450,
                            child: Column(
                              children: [
                                Text(
                                  "Aprenda Flutter com este curso",
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                                ),
                                const SizedBox(height: 8,),
                                Text(
                                  'Bora Aprender com o professor Daniel Ciolfi! Cursos por apenas 22,90. Qualidade garantida',
                                   style: TextStyle(
                                     fontSize: 18,
                                     color: Colors.white
                                   ),
                                ),
                                const SizedBox(height: 16,),
                                CustomSearchField()
                              ],
                            ),
                          )
                        )
                    )
                  ],
                )
            );
          }

          if(maxWidth >= mobileBreackPoint){
            return SizedBox(
              height: 320,

              child: Stack(
                children: [
                  SizedBox(
                    child: Image.network('assets/capa_curso.png', fit: BoxFit.cover),
                    height: 250,
                    width: double.infinity,
                  ),
                  Positioned(
                      left: 20,
                      top: 20,
                      child: Card(
                          color: Colors.black,
                          elevation: 8,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            width: 350,
                            child: Column(
                              children: [
                                Text(
                                  "Aprenda Flutter com este curso",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ),
                                const SizedBox(height: 8,),
                                Text(
                                  'Bora Aprender com o professor Daniel Ciolfi! Cursos por apenas 22,90. Qualidade garantida',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white
                                  ),
                                ),
                                const SizedBox(height: 16,),
                                CustomSearchField()
                              ],
                            ),
                          )
                      )
                  )
                ],
              ),
            );
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network('assets/capa_curso.png', fit: BoxFit.cover)
              ),
              Padding(
                  padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      "Aprenda Flutter com este curso",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Text(
                      'Bora Aprender com o professor Daniel Ciolfi! Cursos por apenas 22,90. Qualidade garantida',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 16,),
                    CustomSearchField()
                  ],
                ),
              )
            ],
          );

        });
  }
}
