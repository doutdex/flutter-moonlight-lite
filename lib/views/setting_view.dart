import 'package:flutter/material.dart';
import '../main.dart';
import '../utils/utils.dart';
import '../widgets/widgets.dart';
import '../core/classes/classes.dart';
import '../config/config.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(title: "Settings"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text("App Settings",
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            ListTile(
              leading: Icon(MyApp.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode),
              title: MyApp.themeNotifier.value == ThemeMode.light
                  ? const Text("Dark Mode")
                  : const Text("Light Mode"),
              trailing: const Icon(Icons.navigate_next),
              onTap: (() {
                MyApp.themeNotifier.value =
                    MyApp.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              }),
            ),
            ListTile(
              leading: const Icon(Icons.cached_outlined),
              title: const Text("API Cache Clear"),
              trailing: const Icon(Icons.navigate_next),
              onTap: (() {
                CacheManager.clearData();
                showMessage(context, "API cache clear successfully.");
              }),
            ),
            const Center(
              child: Text("Help",
                  style: TextStyle(fontWeight: FontWeight.w500)), //Pages
            ),
            ListTile(
              leading: const Icon(Icons.contact_page),
              title: const Text("Contact Us"),
              trailing: const Icon(Icons.navigate_next),
              onTap: (() {
                mlLaunchURL(AppLink.contactUs);
              }),
            ),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text("FAQ"),
              trailing: const Icon(Icons.navigate_next),
              onTap: (() {
                mlLaunchURL(AppLink.contactUs);
              }),
            ),
            const Center(
              child: Text("Contact Channels",
                  style: TextStyle(fontWeight: FontWeight.w500)), //Pages
            ),
            Visibility(
                visible: AppLink.officialWebsite.isNotEmpty,
                child: ListTile(
                  leading: const Icon(Icons.language),
                  title: const Text("Official Website"),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: (() {
                    mlLaunchURL(AppLink.officialWebsite);
                  }),
                )),
            Visibility(
                visible: AppLink.youtube.isNotEmpty,
                child: ListTile(
                  leading: const Icon(Icons.language),
                  title: const Text("YouTube"),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: (() {
                    mlLaunchURL(AppLink.youtube);
                  }),
                )),
            Visibility(
                visible: AppLink.instagram.isNotEmpty,
                child: ListTile(
                  leading: const Icon(Icons.language),
                  title: const Text("Instagram"),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: (() {
                    mlLaunchURL(AppLink.instagram);
                  }),
                )),
            Visibility(
                visible: AppLink.facebook.isNotEmpty,
                child: ListTile(
                  leading: const Icon(Icons.language),
                  title: const Text("Facebook"),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: (() {
                    mlLaunchURL(AppLink.facebook);
                  }),
                )),
            Visibility(
                visible: AppLink.twitter.isNotEmpty,
                child: ListTile(
                  leading: const Icon(Icons.language),
                  title: const Text("Twitter"),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: (() {
                    mlLaunchURL(AppLink.twitter);
                  }),
                )),
            const Center(
              child: Text(
                "About App",
                style: TextStyle(fontWeight: FontWeight.w500),
              ), //Pages
            ),
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text("Terms & Conditions"),
              trailing: const Icon(Icons.navigate_next),
              onTap: (() {
                mlLaunchURL(AppLink.termsAndConditions);
              }),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About Us"),
              trailing: const Icon(Icons.navigate_next),
              onTap: (() {
                mlLaunchURL(AppLink.aboutUs);
              }),
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text("Share The App"),
              trailing: const Icon(Icons.navigate_next),
              onTap: (() {
                mlShare(AppConfig.shareTheAppMsg);
              }),
            ),
            ListTile(
                leading: const Icon(Icons.star),
                title: const Text("Rate This App"),
                trailing: const Icon(Icons.navigate_next),
                onTap: (() {
                  mlShare(AppConfig.rateThisAppLink);
                }))
          ],
        ),
      ),
    );
  }
}
