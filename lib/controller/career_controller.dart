import 'package:flutter/cupertino.dart';
import 'package:jobify/models/career_model.dart';
import 'package:jobify/my_dio/my_dio.dart';
import 'package:jobify/widget/snac.dart';

enum StatusCareer { loading, done, error }

class CareerController extends ChangeNotifier {
  List<CareerModel> career = [];
  StatusCareer statusUser = StatusCareer.loading;

  getUserCareer(String code, String area, context) async {
    statusUser = StatusCareer.loading;
    career = [];
    notifyListeners();
    // print(code);
    // print(area);

    final response = await MyDio.getData('career/$code,$area');
    if (response.error == false) {
      response.data.data.forEach((element) {
        element.forEach((elements) {
          career.add(CareerModel.fromMap(elements));
        });
      });

      statusUser = StatusCareer.done;
      notifyListeners();
    } else if (response.error == true) {
      statusUser = StatusCareer.error;

      showSnac(response.errorMessage, context);
    }
  }
}
