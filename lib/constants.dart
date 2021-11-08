import 'package:flutter/material.dart';

const EdgeInsets padding10 = EdgeInsets.all(10);
const SizedBox wbox5 = SizedBox(
  width: 5,
);
const SizedBox wbox10 = SizedBox(
  width: 10,
);
const SizedBox wbox20 = SizedBox(
  width: 20,
);
const SizedBox wbox30 = SizedBox(
  width: 30,
);
const SizedBox box5 = SizedBox(
  height: 5,
);
const SizedBox box10 = SizedBox(
  height: 10,
);
const SizedBox box20 = SizedBox(
  height: 20,
);
const SizedBox box30 = SizedBox(
  height: 30,
);
Color primaryColor = Color(0xFF00a9b6);

const Color secondaryColor = Color(0xFFf9a825);




// Future<File> urlToFile(String imageUrl) async {
// // generate random number.
//   var rng = new Random();
// // get temporary directory of device.
//   Directory tempDir = await getTemporaryDirectory();
// // get temporary path from temporary directory.
//   String tempPath = tempDir.path;
// // create a new file in temporary path with random file name.
//   File file = new File('$tempPath' + (rng.nextInt(100)).toString() + '.png');
// // call http.get method and pass imageUrl into it to get response.
//   http.Response response = await http.get(Uri.parse(imageUrl));
// // write bodyBytes received in response to file.
//   await file.writeAsBytes(response.bodyBytes);
// // now return the file which is created with random name in
// // temporary directory and image bytes from response is written to // that file.
//   return file;
// }

// Future<String> urlToFilePath(String url, String fileName) async {
//   final Directory directory = await getApplicationDocumentsDirectory();
//   final String filePath = '${directory.path}/$fileName';
//   final http.Response response = await http.get(Uri.parse(url));
//   final File file = File(filePath);
//   await file.writeAsBytes(response.bodyBytes);
//   return filePath;
// }
