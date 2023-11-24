
import 'dart:html';

import 'package:autores/model/autorModel.dart';
import 'package:flutter/material.dart';

class ListAutor extends StatefulWidget {
  final List<Autor> _autores = [];

  ListAutor({super.key});

  @override

  State<ListAutor> createState() => _ListAutorState();

}

class _ListAutorState extends State<ListAutor> {
  @override
  return Scaffold(
    appBar: AppBar(
      title: const Text('Lista de autores'),
    ),
    body: ListView.builder(
      itemCount: widget._autores.length,
      itemBuilder: (context, index){
        final autor = widget._autores[index];
        return ItemAutor(autor)
      },
    ),
  );
}

class ItemAutor extends StatelessWidget {
  final Autor _autor;

  const ItemAutor
}