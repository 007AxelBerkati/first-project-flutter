import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;

  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({Key? key, required this.text}) : super(key: key);

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0;
            });
          },
        )
      ],
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Demo Stateful Widget"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            )),
        body: const Center(
          child: Text(
            "Hallo World",
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add, size: 30.0),
        ));
  }
}

// class FirstScreen extends StatefulWidget {
//   const FirstScreen({Key? key}) : super(key: key);

//   @override
//   _FirstScreenState createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//   final TextEditingController _controller = TextEditingController()
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Screen'),
//       ),
//       body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               TextField(
//                 controller: _controller,
//                 decoration: const InputDecoration(
//                   hintText: 'Write your name here...',
//                   labelText: 'Your Name',
//                 ),

//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 child: const Text('Submit'),
//                 onPressed: () {
//                   showDialog(
//                       context: context,
//                       builder: (context) {
//                         return AlertDialog(
//                           content: Text('Hello, ${_controller.text}'),
//                         );
//                       });
//                 },
//               )
//             ],
//           )),
//     );
//   }
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: const Text(
          'hallo',
          style: TextStyle(fontSize: 30),
        ));
  }
}

// class ScrollingScreen extends StatelessWidget {
//   final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

//   const ScrollingScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.separated(
//         itemCount: numberList.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             height: 250,
//             decoration: BoxDecoration(
//               color: Colors.grey,
//               border: Border.all(color: Colors.black),
//             ),
//             child: Center(
//               child: Text(
//                 '${numberList[index]}',
//                 style: const TextStyle(fontSize: 50),
//               ),
//             ),
//           );
//         },
//         separatorBuilder: (BuildContext context, int index) {
//           return const Divider(
//             height: 100,
//             color: Colors.black,
//           );
//         },
//       ),
//     );
//   }
// }

// class Rainbow extends StatelessWidget {
//   const Rainbow({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Expanded(
//           child: Container(
//             color: Colors.red,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.orange,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.yellow,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.green,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.blue,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.indigo,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.purple,
//           ),
//         ),
//       ],
//     );
//   }
// }

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                ExpandedWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: [
                ExpandedWidget(),
                ExpandedWidget(),
              ],
            ),
            Row(
              children: [
                FlexibleWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: [
                FlexibleWidget(),
                ExpandedWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Expanded',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
          border: Border.all(color: Colors.white),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Flexible',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
