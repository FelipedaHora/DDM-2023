import 'package:flutter/material.dart';
import 'package:projeto03/widget/agenda.dart';
import 'package:projeto03/widget/chat.dart';
import 'package:projeto03/widget/historicoPartidas.dart';
import 'package:projeto03/widget/perfil.dart';
import 'package:projeto03/widget/querendoJogar.dart';

/* class Home extends StatelessWidget {
  final List<String> items =
      List.generate(100, (index) => "Estabelecimento $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Perfil()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 16.0),
            Text(
              'Pesquisar',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 8.0),
            Form(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Procure seu estabelecimento',
                  border: OutlineInputBorder(),
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Recent items',
                  style: TextStyle(fontSize: 20.0),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('See all'),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(items[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
} */

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _items = [
    'Estabelecimento 1',
    'Estabelecimento 2',
    'Estabelecimento 3',
    'Estabelecimento 4',
    'Estabelecimento 5',
  ];
  List<String> _selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Perfil()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Querendo Jogar'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuerendoJogarScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Histórico de Partidas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoricoPartidas()),
                );
              },
            ),
            ListTile(
              title: Text('Chat'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Chat()),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Pesquisar',
                suffixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (BuildContext context, int index) {
                  return CheckboxListTile(
                    title: Text(_items[index]),
                    value: _selectedItems.contains(_items[index]),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          _selectedItems.add(_items[index]);
                        } else {
                          _selectedItems.remove(_items[index]);
                        }
                      });
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: _selectedItems.isNotEmpty
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Agenda()),
                          );
                        }
                      : null,
                  child: Text('Agenda'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
