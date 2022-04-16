import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/controller/home_controller.dart';
import 'package:provider_test/controller/login_controller.dart';
import 'package:provider_test/widget/text_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Consumer<LoginController>(builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                '로그인 해주세요.',
              ),
              TextField(
                decoration: InputDecoration(hintText: '아이디'),
                onChanged: (text) {
                  value.id = text;
                },
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: '비밀번호'),
                onChanged: (text) {
                  value.pwd = text;
                },
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<LoginController>(context, listen: false)
                        .increase();
                  },
                  child: Text(
                    '로그인',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          );
        }),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Provider.of<CountController>(context, listen: false).increase();
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
