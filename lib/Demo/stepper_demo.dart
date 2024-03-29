import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StepperDemo"),
        elevation: 0.0,
      ),
      body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: Stepper(
                  currentStep: _currentStep, //当前哪一步打开
                  onStepTapped: (int value) {
                    setState(() {
                      _currentStep = value;
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      _currentStep < 0 ? _currentStep -= 1 : _currentStep = 0;
                    });
                  },
                  steps: [
                    Step(
                      title: Text("Login"),
                      subtitle: Text("Login First"),
                      content:
                          Text("Magna exercitation duis non sint eu notrud"),
                      isActive: _currentStep == 0, //是否激活
                    ),
                    Step(
                      title: Text("Choose Plan "),
                      subtitle: Text("Choose your plan"),
                      content:
                          Text("Magna exercitation duis non sint eu notrud"),
                      isActive: _currentStep == 1, //是否激活
                    ),
                    Step(
                      title: Text("Confirm payment"),
                      subtitle: Text("confirm your payment method"),
                      content:
                          Text("Magna exercitation duis non sint eu notrud"),
                      isActive: _currentStep == 2, //是否激活
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
