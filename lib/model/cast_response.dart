import 'package:my_flix/model/cast.dart';

class CastsResponse {
  final List<Cast> casts;
  final String error;

  CastsResponse(this.casts, this.error);

  CastsResponse.fromJson(Map<String, dynamic> json)
      : casts =
            (json["casts"] as List).map((i) => new Cast.fromJson(i)).toList(),
        error = "";

  CastsResponse.withError(String errorValue)
      : casts = List(),
        error = errorValue;
}
