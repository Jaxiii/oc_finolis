import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_midi/flutter_midi.dart';

final Color amber = Color(0xFFFFF8E1);

void main() {
  runApp(MyApp());
}

List<String> nota = [
  "",
  "Si",
  "Do#",
  "Re#",
  "Mi",
  "Fa#",
  "Sol#",
  "La",
  "Si",
  "Do#",
  "Re#",
  "Mi"
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: amber),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i = 0;

  void fazIsso2(int volta) {
    setState(() {
      i = volta;
    });
  }

  final _flutterMidi = FlutterMidi();
  @override
  void initState() {
    if (!kIsWeb) {
      load(_value);
    } else {
      _flutterMidi.prepare(sf2: null);
    }
    super.initState();
  }
  
  void load(String asset) async {
    print('Loading File...');
    _flutterMidi.unmute();
    ByteData _byte = await rootBundle.load(asset);
    //assets/sf2/SmallTimGM6mb.sf2
    //assets/sf2/Piano.SF2
    _flutterMidi.prepare(sf2: _byte, name: _value.replaceAll('assets/', ''));
  }

  play(int midi) {
    if (kIsWeb) {
      // WebMidi.play(midi);
    } else {
      _flutterMidi.playMidiNote(midi: midi);
    }
}

  String _value = 'assets/Amarelo_1.mp3';
  
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      Center(
          child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.amber[500],
                shape: BoxShape.circle,
              ))),
      Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 1.01 ,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                padding: const EdgeInsets.all(5.0),
                width: 480,
                height: 100,
                color: (Colors.lightGreen[500]),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.amber[500],
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.brown,
                              width: 3,
                            ),
                          )),
                      Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.brown,
                              width: 3,
                            ),
                            color: Colors.cyan[200],
                          )),
                      Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.brown,
                              width: 3,
                            ),
                          )),
                    ])),
            Container(
              padding: const EdgeInsets.all(5.0),
              width: 480,
              height: 100,
              color: (Colors.brown[400]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown,
                            width: 3,
                          ),
                          color: Colors.red[600],
                        )),
                    Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown,
                            width: 3,
                          ),
                          color: Colors.blue[700],
                        )),
                    Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown,
                            width: 3,
                          ),
                          color: Colors.cyan[300],
                        )),
                    Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown,
                            width: 3,
                          ),
                          color: Colors.yellow[600],
                        )),
                    Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown,
                            width: 3,
                          ),
                          color: Colors.orange[600],
                        )),
                    Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown,
                            width: 3,
                          ),
                          color: Colors.purple[300],
                        )),
                    Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown,
                            width: 3,
                          ),
                          color: Colors.green[600],
                        )),
                    Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown,
                            width: 3,
                          ),
                          color: Colors.red[600],
                        )),
                    Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown,
                            width: 3,
                          ),
                          color: Colors.blue[700],
                        )),
                    Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown,
                            width: 3,
                          ),
                          color: Colors.cyan[300],
                        )),
                    Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown,
                            width: 3,
                          ),
                          color: Colors.yellow[600],
                        )),
                  ]),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 160), primary: Colors.blue[300]),
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CaixaCantante(play)),
                );
              },
            )
          ]),
        ),
      ),
      Center(
          child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ))),
    ];
    final _kTabs = <Tab>[
      Tab(text: 'Roda da Melodia'),
      Tab(text: 'Caixa Cantante'),
      Tab(text: 'Roda da Harmonia'),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFFBC300),
            title: Text('Ócio Criativo'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {},
              ),
            ],
          ),
          body: DefaultTabController(
            length: 3,
            initialIndex: 1,
            child: Column(
              children: <Widget>[
                Container(
                    height: 60.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: TabBar(
                      isScrollable: true,
                      labelColor: Colors.amber[800],
                      indicatorColor: Colors.amber[400],
                      indicatorWeight: 2.0,
                      labelPadding: EdgeInsets.only(right: 100.0, left: 100.0),
                      indicatorPadding: EdgeInsets.only(right: 10, left: 10.0),
                      labelStyle: TextStyle(fontSize: 16.0),
                      tabs: _kTabs,
                    )),
                Container(
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(
                      children: _kTabPages,
                    ))
              ],
            ),
          )),
    );
  }
}

class CaixaCantante extends StatefulWidget {

  dynamic action;

  CaixaCantante(this.action, {Key? key}) : super(key: key);

  @override
  _CaixaCantante createState() => _CaixaCantante();
}

class _CaixaCantante extends State<CaixaCantante> {
  int i = 0;
  String text = nota[0];
  void fazIsso2(int volta) {
    setState(() {
      i = volta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            padding: const EdgeInsets.all(5.0),
            width: 480,
            height: 100,
            color: (Colors.lightGreen[500]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.amber[500],
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.brown,
                            width: 3,
                          ))),
                  Container(
                    width: 150,
                    height: 40,
                    child: MeuTexto(i),
                    decoration: BoxDecoration(
                      color: Colors.cyan[200],
                      border: Border.all(
                        color: Colors.brown,
                        width: 3,
                      ),
                    ),
                  ),
                  Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.brown,
                            width: 3,
                          ))),
                ])),
        Container(
          padding: const EdgeInsets.all(5.0),
          height: 100,
          color: (Colors.brown[400]),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MeuBotao(widget.action,i, 1, Colors.blue[700], false, fazIsso2),
                MeuBotao(widget.action,i, 2, Colors.blue[800], false, fazIsso2),
                MeuBotao(widget.action,i, 3, Colors.teal[300], false, fazIsso2),
                MeuBotao(widget.action,i, 4, Colors.yellow[700], false, fazIsso2),
                MeuBotao(widget.action,i, 5, Colors.orange[800], false, fazIsso2),
                MeuBotao(widget.action,i, 6, Colors.purple[500], false, fazIsso2),
                MeuBotao(widget.action,i, 7, Colors.green[700], false, fazIsso2),
                MeuBotao(widget.action,i, 8, Colors.red[700], false, fazIsso2),
                MeuBotao(widget.action,i, 9, Colors.blue[700], false, fazIsso2),
                MeuBotao(widget.action,i, 10, Colors.teal[300], false, fazIsso2),
                MeuBotao(widget.action,i, 11, Colors.yellow[700], false, fazIsso2),
              ]),
        ),
      ]),
    );
  }
}

class MeuBotao extends StatefulWidget {
  final int meuNumero;
  dynamic cor;
  bool isRound;
  dynamic action;
  Function callback;
  int i;
  MeuBotao(this.action, this.i, this.meuNumero, this.cor, this.isRound, this.callback);

  @override
  _MeuBotaoState createState() => _MeuBotaoState();
}

class _MeuBotaoState extends State<MeuBotao> {
  void fazIsso() {
    setState(() {
      widget.action(60);
      widget.i = widget.meuNumero;
      widget.callback(widget.meuNumero);
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: fazIsso,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.brown,
                width: 3,
              ),
              color: widget.cor,
              borderRadius: widget.isRound
                  ? BorderRadius.circular(30)
                  : BorderRadius.circular(0)),
          width: MediaQuery.of(context).size.width / 14,
          height: MediaQuery.of(context).size.width / 14,
        ));
  }
}

class MeuTexto extends StatefulWidget {
  int i;
  MeuTexto(this.i, {Key? key}) : super(key: key);

  @override
  _MeuTextoState createState() => _MeuTextoState();
}

class _MeuTextoState extends State<MeuTexto> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(nota[widget.i]));
  }
}
