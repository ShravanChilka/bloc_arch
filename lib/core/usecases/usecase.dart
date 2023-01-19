import '../../utils/contants.dart' as constants;

class Params {
  final Map<String, String> queryParameter = {'key': constants.apiKey};
  Params({
    Map<String, String>? parameters,
  }) {
    if (parameters != null) {
      queryParameter.addAll(parameters);
    }
  }
}
