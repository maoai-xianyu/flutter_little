import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('formDemo'),
        elevation: 0.0,
      ),
      body: Theme(
        // ThemeData 会代替应用的所有主题
        /*  data: ThemeData(
          primaryColor: Colors.black,
        ),
      */
        // 覆盖主题色,之前设置其他主题会保留
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),

        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterForm(),
              SizedBox(
                height: 30.0,
              ),
              TextFieldDemo(),
            ],
          ),
        ),
      ),
    );
  }
}

// 注册表单
class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  // 如何得到表单里面的数据  GlobalKey
  final regisetFormkey = GlobalKey<FormState>();
  String username;
  String password;
  bool autovalidate = false;

  // 提交表单
  void submitRegiterForm() {
    // 进行校验
    if (regisetFormkey.currentState.validate()) {
      // 保存RegisterForm填写的数据
      regisetFormkey.currentState.save();
      debugPrint('username $username');
      debugPrint('password $password');
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Registering.....'),
      ));
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  // 校验
  String validateUsername(value) {
    if (value.isEmpty) {
      return 'Username is required.';
    }
    // 验证没有问题 返回 null
    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty) {
      return 'Password is required.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      // 绑定key
      key: regisetFormkey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            // 保存数据
            onSaved: (newValue) {
              debugPrint('newValue username $newValue');
              username = newValue;
            },
            // 验证器
            validator: validateUsername,
            // 自动验证
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: '',
            ),
            // 保存数据
            onSaved: (newValue) {
              debugPrint('newValue password $newValue');
              password = newValue;
            },
            validator: validatePassword,
            autovalidate: autovalidate,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            // 宽度
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              elevation: 0.0,
              onPressed: submitRegiterForm,
            ),
          ),
        ],
      ),
    );
  }
}

// 单个文本框
class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    // 消化控制器
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    //textEditingController.text = 'hi';
    // 监听文本框的值
    textEditingController.addListener(() {
      debugPrint('input:${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      // 可以给文本字段设置控制器，控制器可以设置文本的初始值，可以监听文本的变化，用完控制器需要消化掉,不然会浪费资源
      controller: textEditingController,
      // 文本框值变化 controller 和 onChanged选一个
      /* onChanged: (value) {
        debugPrint('input:$value');
      }, */
      onEditingComplete: () {
        debugPrint('input:Complete');
      },
      onSubmitted: (value) {
        debugPrint('submit:$value');
      },
      // 文本框的样式
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'Enter the post title.',
        // 拿掉下划线
        // border: InputBorder.none,
        // 文本框进入焦点的时候，会动画
        //border: OutlineInputBorder(),
        // 文本框背景色
        filled: false,
        fillColor: Color.fromRGBO(23, 255, 255, 0.8),
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
