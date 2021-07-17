import 'package:flutter/material.dart';

class Example2 extends StatefulWidget {
  const Example2({Key key}) : super(key: key);

  @override
  _Example2State createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  void _showOverlay(BuildContext context) async {
    //Declaring and Initializing OverlayState and OverlayEntry objects
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(builder: (context) {
      //You can return any widget you like here to be displayed on the Overlay
      return Positioned(
        left: MediaQuery.of(context).size.width * 0.2,
        top: MediaQuery.of(context).size.height * 0.3,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Stack(
            children: [
              Image.asset(
                'images/commentCloud.png',
                colorBlendMode: BlendMode.multiply,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.13,
                left: MediaQuery.of(context).size.width * 0.13,
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    'I will disappear in 3 seconds.',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });

    //Inserting the OverlayEntry into the Overlay
    overlayState.insert(overlayEntry);

    //Awaiting for 3 seconds
    await Future.delayed(Duration(seconds: 3));

    //Removing the OverlayEntry from the Overlay
    overlayEntry.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GeeksForGeeks Example 2',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Center(
              child: MaterialButton(
        color: Colors.green,
        minWidth: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.06,
        child: Text(
          'show Overlay',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          //calling the _showOverlay method when Button is pressed
          _showOverlay(context);
        },
      ))),
    );
  }
}
