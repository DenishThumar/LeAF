import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;


Future getUploadImg(File image,String button) async {
  String appleUrl = 'https://plantvision-prediction.cognitiveservices.azure.com/customvision/v3.0/Prediction/0bde21fb-5481-4495-985d-86ec9d0982d7/classify/iterations/PlantVision_Apple/image';
  String tomatoUrl = 'https://centralindia.api.cognitive.microsoft.com/customvision/v3.0/Prediction/895dd95e-39ac-436f-b70f-87dfb89dd302/classify/iterations/Iteration3/image';
  String strawberryUrl = 'https://plantvision-prediction.cognitiveservices.azure.com/customvision/v3.0/Prediction/1c0f1d3a-ecf9-4787-8924-2fe0b2bd4bdf/classify/iterations/PlantVision_Strawberry/image';
  String cornUrl = 'https://plantvision-prediction.cognitiveservices.azure.com/customvision/v3.0/Prediction/14a57fdd-33c0-490d-aaa6-32af9a81e38a/classify/iterations/PlantVision_Corn/image';
  String potatoUrl='https://plantvision-prediction.cognitiveservices.azure.com/customvision/v3.0/Prediction/2cbb527f-8daf-4075-b7ba-80420f77b5a0/classify/iterations/PlantVision_Potato/image';
  String apiUrl="";
  switch(button)
  {
    case "Apple":
      apiUrl=appleUrl;
      break;
    case "Tomato":
      apiUrl=tomatoUrl;
      break;
    case "Strawberry":
      apiUrl=strawberryUrl;
      break;
    case "Corn":
      apiUrl=cornUrl;
      break;
    case "Potato":
      apiUrl=potatoUrl;
      break;
  }

  final length = await image.length();
  final Map<String, String> headers = {
    "Prediction-Key": 'a9b44bc29a8146b9a931edab64552e85',
    "Content-Type": "application/octet-stream"
  };
  final request = new http.MultipartRequest('POST', Uri.parse(apiUrl));
  request.headers.addAll(headers);
  request.files.add(new http.MultipartFile('avatar', image.openRead(), length));
  http.Response response = await http.Response.fromStream(await request.send());
  String data = response.body;
  print(response.statusCode);
  print(response.body);
  return json.decode(data)['predictions'][0]['tagName'];
}
