import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'core/constants/app_images.dart';
import 'core/constants/app_styles.dart';
import 'core/constants/strings.dart';

class CardDesign extends StatelessWidget {
  const CardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Digital Card"),
        backgroundColor: const Color.fromARGB(255, 4, 238, 183),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          backgroundImage: AssetImage(AppImages.hiesenbergPic),
          radius: 100,
        ),
        const Text("Nepali"),
        const SizedBox(height: 20),
        cardDesignRow(field: Strings.name, fieldValue: Strings.myName),
        const SizedBox(height: 20),
        cardEmailRow(field: Strings.email, fieldValue: Strings.myEmail),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  String url = "tel:${Strings.myContactId}";
// '                   print("Printing........");
                  callToNumber(url: url);
                },
                child: Text(
                  Strings.contactId,
                  style: const TextStyle(fontSize: 20, color: Colors.red),
                )),
            Text(
              Strings.myContactId,
              style: const TextStyle(fontSize: 18, color: Colors.blue),
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.dob,
              style: const TextStyle(fontSize: 20, color: Colors.red),
            ),
            Text(
              Strings.myDob,
              style: const TextStyle(fontSize: 18, color: Colors.blue),
            )
          ],
        ),
        const SizedBox(height: 20),
      ]
          //    Image.asset("assets/k.png")),

          ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  callToNumber({required String url}) async {
    // String url = 'tel:$phoneNo';
    try {
      launchUrl(Uri.parse(url));
    } catch (e) {
      print("Could not launch url");
    }
  }

  cardDesignRow({required String field, required String fieldValue}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          field,
          style: AppStyles.mainHeading,
        ),
        Text(
          fieldValue,
          style: AppStyles.subTitle,
        )
      ],
    );
  }

  cardEmailRow({required String field, required String fieldValue}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          field,
          style: AppStyles.emailHeading,
        ),
        Text(
          fieldValue,
          style: AppStyles.emailTitle,
        )
      ],
    );
  }
}
