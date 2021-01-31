import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RxDart Demo"),
        elevation: 0.0,
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  PublishSubject<String> _textFieldSubject;

  @override
  void initState() {
    super.initState();

    _textFieldSubject = PublishSubject<String>();
    // _textFieldSubject.listen((data) => print(data));
    _textFieldSubject
        // .map((event) => 'event: $event')
        // .where((event) => event.length > 9)
        .debounceTime(Duration(milliseconds: 500)) //间隔多长时间
        .listen((event) => print(event));

    // Stream<String> _observable =
    // Stream.fromIterable(['Hello', "你好"]);
    // Stream.fromFuture(Future.value('你好'));
    //     Stream.periodic(Duration(seconds: 3), (x) => x.toString()); //每隔一段时间执行, x表示重复做的事情
    // _observable.listen(print);

    // PublishSubject<String> _subject = PublishSubject<String>();
    // BehaviorSubject<String> _subject = BehaviorSubject<String>();
    // ReplaySubject<String> _subject =
    //     ReplaySubject<String>(maxSize: 2); //maxSize限制接受的最大个数
    // _subject.add('Hello');
    // _subject.add('Hola');
    // _subject.add('Hi');
    // _subject.listen((value) {
    //   print('listen1: $value');
    // });
    // _subject.listen((value) {
    //   print('listen2: ${value.toUpperCase()}');
    // });
    // _subject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: TextField(
        decoration: InputDecoration(labelText: 'Title', filled: true),
        onChanged: (value) {
          _textFieldSubject.add('input: $value');
        },
        onSubmitted: (value) {
          _textFieldSubject.add('submit: $value');
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _textFieldSubject.close();
  }
}
