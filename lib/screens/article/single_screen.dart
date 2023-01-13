import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/viewport.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latihan_bloc/models/article_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../helpers/size_helper.dart';

class ArticleDetailScreen extends StatefulWidget {
  @override
  State<ArticleDetailScreen> createState() => _ArticleDetailScreenState();
}

class _ArticleDetailScreenState extends State<ArticleDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 32,
            ),
            Container(
              width: displayWidth(context) * 0.95,
              height: 50,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.yellow.shade600,
                      Colors.black26,
                      Colors.blue.shade800
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  "Title",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'DancingScript',
                      fontSize: 24),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              height: displayHeight(context) * 0.25,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://picsum.photos/seed/picsum/200/300"),
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: displayWidth(context) * 0.95,
                    height: 360,
                    padding: const EdgeInsets.all(
                        10), //You can use EdgeInsets like above
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.yellow.shade700,
                            Colors.black26,
                            Colors.blue.shade800
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'DancingScript',
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> openUrl(
    String url, {
    forceSafariVC = false,
    forceWebView = false,
    enableJavaScript = true,
  }) async {
    try {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } catch (e) {
      print(e);
      // Get.snackbar(
      //   'Error',
      //   'Tidak bisa membuka link',
      //   icon: const Icon(Icons.error),
      //   backgroundColor: Colors.red,
      //   colorText: Colors.white,
      //   forwardAnimationCurve: Curves.bounceIn,
      //   margin: const EdgeInsets.only(
      //     top: 10,
      //     left: 5,
      //     right: 5,
      //   ),
      // );
    }
  }
}
