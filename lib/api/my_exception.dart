

class MyException implements Exception {

  String title;
  String body;

  MyException({required this.title, required this.body});


  String toString(){

    return "$title :  $body";
  }

}


class FetchDataException extends MyException {
  FetchDataException({required String body}) : super(title: "Data Communication Error", body: body);
}

class BadRequestException extends MyException {
   BadRequestException({required String body}) : super(title: "Invalid Request Error", body: body);
}

class UnAuthorisedException extends MyException{
  UnAuthorisedException({required String body}) : super(title: "UnAuthorised Error", body:body);
}

class InvalidInputException extends MyException {
   InvalidInputException({required String body}) : super(title: "Invalid Input Error", body: body);
}


