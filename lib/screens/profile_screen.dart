import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/viewport.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../helpers/size_helper.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final Uri _urlInstagram = Uri.parse('https://instagram.com/kangcandra_');
  final Uri _urlFacebook = Uri.parse('https://facebook.com/kangcandraa');
  final Uri _urlTwitter = Uri.parse('https://twitter.com/kangcandra_');
  final Uri _urlLinkedin = Uri.parse('https://linkedin.com/in/kangcandraa');

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
            const CircleAvatar(
              backgroundColor: Colors.black,
              radius: 110,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
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
                  "Candra Herdiansyah",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'DancingScript',
                      fontSize: 24),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () async {
                    await openUrl(_urlTwitter.toString());
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/twitter.svg",
                      // color: Colors.blueGrey,
                      matchTextDirection: true,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await openUrl(_urlFacebook.toString());
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/facebook.svg",
                      // color: Colors.blueGrey,
                      matchTextDirection: true,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await openUrl(_urlInstagram.toString());
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/instagram.svg",
                      // color: Colors.blueGrey,
                      matchTextDirection: true,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await openUrl(_urlLinkedin.toString());
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/linkedin.svg",
                      // color: Colors.blueGrey,
                      matchTextDirection: true,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
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
