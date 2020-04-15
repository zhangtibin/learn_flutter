import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        // data: ThemeData(//使用ThemeData完全覆盖之前主题
        //   primaryColor: Colors.white,
        // ),
        data: Theme.of(context).copyWith(
          //使用ThemeData完全覆盖之前主题
          primaryColor: Colors.grey,
        ),
        // child: ThemeDemo(),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // TextFieldDemo(),
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String userName, password;
  bool autoValidate = false;

  void submitRegisterForm() {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('userName：$userName');
      debugPrint('password：$password');
      Scaffold.of(context).showSnackBar (
        SnackBar(content: Text('Registering....'))
      );
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  String validatorUserName(value) {
    if (value.isEmpty) {
      return 'userName is Required';
    }
    return null;
  }

  String validatorPassword(value) {
    if (value.isEmpty) {
      return 'password is Required';
    }
    return null;
  }

  

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'UserName', helperText: ''),
            onSaved: (value) {
              userName = value;
            },
            validator: validatorUserName,
            autovalidate: autoValidate, //自动验证
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: '',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: validatorPassword,
            autovalidate: autoValidate,
          ),
          SizedBox(height: 45.0),
          Container(
            width: double.infinity,
            height: 50,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Register', style: TextStyle(color: Colors.white)),
              elevation: 0,
              onPressed: submitRegisterForm,
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    //回收
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.addListener(() {
      debugPrint('input：${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (value) {
      //   debugPrint('input：$value');
      // },
      onSubmitted: (value) {
        debugPrint('submit：$value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: '请输入title',
        // border: InputBorder.none,
        // border: OutlineInputBorder(),
        filled: true,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Theme.of(context).primaryColor, //离widget最近的主题
      color: Theme.of(context).accentColor, //离widget最近的主题
    );
  }
}
