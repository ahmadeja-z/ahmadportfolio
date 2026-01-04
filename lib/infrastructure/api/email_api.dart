import 'dart:convert';

import 'package:ahmadportfolio/infrastructure/failures/email_failure.dart';
import 'package:http/http.dart' as http;
import 'email_model.dart';

abstract class EmailApi {
  ///portfolio-api-chi.vercel.app/api/getintouch
  Future<Email> sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  });
}

class EmailApiImpl implements EmailApi {
  final http.Client client;
  var serviceId = "service_lsiv88f";
  var templateId = "template_6etpyw9";
  var userId = "iIZBJ9UTTiyLGGC3H";

  EmailApiImpl({required this.client});

  Future<Email> sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    try {
      final response = await client.post(
        Uri.parse("https://api.emailjs.com/api/v1.0/email/send"),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "service_id": serviceId,
          "template_id": templateId,
          "user_id": userId,
          "template_params": {
            "name": name,
            "email": email,
            "subject": subject,
            "message": message,
          }
        }),
      );

      if (response.statusCode == 200) {
        return Email(status: "success");
      } else {
        print("EmailJS error: ${response.body}");
        throw EmailFailure.serverError();
      }
    } catch (e) {
      print("EmailJS exception: ${e.toString()}");
      throw EmailFailure.networkError();
    }
  }
}
