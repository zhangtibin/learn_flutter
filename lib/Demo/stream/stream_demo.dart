import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream"),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamDemoSubscription;
  StreamController<String> _streamDemo;
  StreamSink _sinkDemo;
  String _data = '...';
  @override
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    print('create Stream');
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    // _streamDemo = StreamController<String>();
    _streamDemo = StreamController.broadcast();
    _sinkDemo = _streamDemo.sink;

    print('Start Listen a stream ');
    _streamDemoSubscription =
        _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);
    _streamDemo.stream.listen(onDataTwo, onError: onError, onDone: onDone);

    print("initialized completed");
  }

  void onData(String data) {
    setState(() {
      _data = data;
    });
    print('$data');
  }

  void onDataTwo(String data) {
    print('onDataTwo: $data');
  }

  void onError(error) {
    print('Error: $error');
  }

  void onDone() {
    print('Done!');
  }

  void _pauseStream() {
    print('Pause subscrition');
    _streamDemoSubscription.pause();
  }

  void _resumeStream() {
    print('Resume subscrition');
    _streamDemoSubscription.resume();
  }

  void _cancelStream() {
    print('Cancel subscrition');
    _streamDemoSubscription.cancel();
  }

  void _addDataToStream() async {
    print('Add data to stream');
    String data = await fetchData();
    // _streamDemo.add(data);
    _sinkDemo.add(data);
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    return "Hello~";
    // throw 'Something happened';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(_data),
            StreamBuilder(
              builder: (context, snapshot) {
                return Text('${snapshot.data}');
              },
              stream: _streamDemo.stream,
              initialData: '...',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(onPressed: _addDataToStream, child: Text('Add')),
                FlatButton(onPressed: _pauseStream, child: Text('Pause')),
                FlatButton(onPressed: _resumeStream, child: Text('Resume')),
                FlatButton(onPressed: _cancelStream, child: Text('Cancel')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
