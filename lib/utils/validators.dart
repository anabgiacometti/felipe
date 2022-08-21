class Validators {
  static oneOf(List validators, String? value) {
    for (var validator in validators) {
      var result = validator(value);
      if (result != null) {
        return result;
      }
    }
    return null;
  }

  static requiredField(String? value, {String? customError}) {
    if (value != null && value.isEmpty) {
      return customError ?? "Por favor, preencha este campo";
    }
  }

  static emailField(String? value, {String? customError}) {
    RegExp exp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value != null && (!exp.hasMatch(value))) {
      return customError ?? "E-mail inválido";
    }
  }
}
