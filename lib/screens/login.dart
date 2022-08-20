import 'package:flutter/material.dart';
import 'package:testing/utils/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

const Text loginText = Text("Login",
    style: TextStyle(
        fontSize: 36.0, fontWeight: FontWeight.w300, color: Colors.indigo));

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
              children: <Widget>[
                loginText,
                Spacing.veryLarge,
                TextFormField(
                  controller: emailController,
                  style: const TextStyle(fontWeight: FontWeight.w200),
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
                  controller: passwordController,
                  style: const TextStyle(fontWeight: FontWeight.w200),
                  autocorrect: false,
                  obscureText: true,
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.lock), labelText: 'Senha'),
                ),
                Spacing.tiny,
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(alignment: Alignment.center),
                    child: const Text("Esqueceu a senha?",
                        style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w300))),
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
                Row(children: const <Widget>[
                  Expanded(child: Divider()),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "OU",
                        style: TextStyle(color: Colors.black38),
                      )),
                  Expanded(child: Divider()),
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
                  text: const TextSpan(children: [
                    TextSpan(
                        text: "Não tem uma conta? ",
                        style: TextStyle(color: Colors.black38)),
                    TextSpan(
                        text: "Registre-se",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.w500)),
                  ]),
                ),
              ]),
        ),
      ),
    );
  }
}
