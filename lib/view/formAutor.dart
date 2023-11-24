import 'package:autores/model/autorModel.dart';
import 'package:flutter/material.dart';

// class FormAutor extends StatelessWidget {
//   const FormAutor({super.key});

//   @override
//   State<FormAutor> createState() => _FormAutorState();
// }
class FormAutor extends StatefulWidget {
  const FormAutor({Key? key}) : super(key: key);

  @override
  _FormAutorState createState() => _FormAutorState();
}

class _FormAutorState extends State<FormAutor> {
  final TextEditingController _ctrlNome = TextEditingController();
  final TextEditingController _ctrlAno = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro Autores'),
      ),
      body: Card(
        child: Column(
          children: [
            TextField(
              controller: _ctrlNome,
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),
            TextField(
              controller: _ctrlAno,
              decoration: InputDecoration(
                labelText: 'Ano',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
          final int? anoNascimento = int.tryParse(_ctrlAno.text);
          final String nome = _ctrlNome.text;

          if (anoNascimento != null) {
            final autor = Autor(nome, anoNascimento);

            Navigator.pop(context, autor);
          }
        },
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Desgraça'),
//       ),
//       Card(
//         child: Column(
//           children: [
//             const TextField(
//               controller: _ctrlNome,
//               decoration: InputDecoration(
//                 labelText: 'Titulo',
//               ),
//             ),
//             const TextField(
//               controller: _ctrlAno,
//               decoration: InputDecoration(
//                 labelText: 'cu',
//               ),
//             ),
//           FloatingActionButton(
//             child: const Icon(Icons.save)
//             onPressed: () {
//                   final int? anoNascimento = int.tryParse(_ctrlAno.text);
//                   final string nome = _ctrlNome.text;

//                   if(anoNascimento != null){
//                     final autor = Autor(nome, anoNascimento);
//                     Navigator.pop(context, autor);
//                   }
//           })

          
//                 }
//               ),
//             ],
//           ),
//           ],)
//       );
// }
