import 'package:flutter/material.dart';
import 'package:testing/main.dart';
import 'package:testing/utils/style.dart';
import 'package:testing/utils/validators.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? get _errorText {
    final text = emailController.value.text;
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 4) {
      return 'Too short';
    }
    // return null if the text is valid
    return null;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        minimum: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Login",
                        style: Theme.of(context).textTheme.headline1)),
                Spacing.veryLarge,
                TextFormField(
                  cursorHeight: 22,
                  controller: emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    return Validators.oneOf(
                        [Validators.requiredField, Validators.emailField],
                        value);
                  },
                  style: const TextStyle(
                      fontWeight: FontWeight.w200, letterSpacing: 2),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.person), labelText: 'E-mail'),
                  textInputAction: TextInputAction.next,
                  onEditingComplete: () {
                    FocusScope.of(context).nextFocus();
                  },
                ),
                Spacing.small,
                TextFormField(
                  cursorHeight: 22,
                  controller: passwordController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    return (value != null && value.isEmpty)
                        ? 'Por favor, preencha a senha.'
                        : null;
                  },
                  style: const TextStyle(
                      fontWeight: FontWeight.w200, letterSpacing: 2),
                  autocorrect: false,
                  obscureText: true,
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.lock), labelText: 'Senha'),
                ),
                Spacing.tiny,
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(alignment: Alignment.center),
                    child: Text("Esqueceu a senha?",
                        style: Theme.of(context).textTheme.bodyText1)),
                Spacing.tiny,
                ElevatedButton.icon(
                  icon: const Icon(Icons.arrow_right_alt),
                  onPressed: () {
                    // Respond to button press
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50), // NEW
                  ),
                  label: const Text("LOGIN"),
                ),
                Spacing.medium,
                Row(children: <Widget>[
                  const Expanded(child: Divider()),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "OU",
                        style: Theme.of(context).textTheme.bodyText1,
                      )),
                  const Expanded(child: Divider()),
                ]),
                Spacing.medium,
                OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50)),
                  icon: Image.asset('assets/google_g.png', height: 20),
                  label: const Text("LOGIN COM GOOGLE"),
                ),
                Spacing.medium,
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "N??o tem uma conta? ",
                        style: Theme.of(context).textTheme.bodyText1),
                    TextSpan(
                        text: "Registre-se", style: Theme.of(context).bodyLink),
                  ]),
                ),
              ]),
        ),
      ),
    );
  }
}
