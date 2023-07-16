import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profile/constants/constanse.dart';
import 'package:profile/widgets/create_shape_end_of_page_left.dart';
import 'package:profile/widgets/create_shape_end_of_page_right.dart';
import 'package:profile/widgets/input_create.dart';
import 'package:profile/widgets/message.dart';

void main() {
  return runApp(Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  // get Value of TextFields
  final height = TextEditingController();
  final weight = TextEditingController();
  // =================================================================

  // save result bmi and reult text with SetState in vars
  // my program state , will be change
  double resultBmi = 0;
  String resultText = "";
  Color messageColor = Colors.red;
  double WidthGood = 100;
  double WidthBad = 100;

  void Calculate() {
    final weightValue = double.parse(this.weight.text);

    final heightValue = double.parse(this.height.text);

    setState(() {
      resultBmi = weightValue / (heightValue * heightValue);

      if (resultBmi > 25) {
        resultText = "شما اضافه وزن دارید";
        messageColor = Colors.redAccent;
        WidthGood = 100;
        WidthBad = 350;
      } else if (resultBmi >= 18.5 && resultBmi <= 24.9) {
        resultText = "شما در محدوده وزنی مناسبی قرار دارید";
        messageColor = Colors.greenAccent;
        WidthGood = 350;
        WidthBad = 100;
      } else {
        resultText = "هشدار کمبود وزن";
        messageColor = Colors.yellowAccent;
        WidthGood = 200;
        WidthBad = 200;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vz', brightness: Brightness.dark),
      home: Scaffold(
        resizeToAvoidBottomInset:
            false, // در مواقع استفاده از کیبورد و باز شدنش دیگه فلاتر اور

        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "محاسبه شاخص توده بدنی من ",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black45,
          elevation: 0,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputField(
                    TextFieldHint: 'وزن',
                    Controller: weight,
                    HelperText: '',
                  ),
                  InputField(
                    TextFieldHint: 'قد',
                    Controller: height,
                    HelperText: 'برای مثال : 1.50',
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                  onPressed: () {
                    Calculate();
                  },
                  child: Text(
                    'محاسبه کن',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 40,
              ),
              Text(
                '${resultBmi.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: 40,
              ),
              // result text bmi
              Message(messageColor: messageColor, text: resultText),
              SizedBox(
                height: 40,
              ),
              RightShape(
                width: WidthBad,
              ),
              SizedBox(
                height: 40,
              ),
              LeftShape(
                width: WidthGood,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
