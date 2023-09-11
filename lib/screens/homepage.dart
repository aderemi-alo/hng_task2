import 'package:flutter/material.dart';
import '../cv_details.dart';

class HomePage extends StatelessWidget {
  final CVDetails cvDetails;
  const HomePage({super.key, required this.cvDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile CV"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    cvDetails.fullName,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                          text: "Personal Bio: ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: cvDetails.personalBio,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18))
                    ],
                  ),
                ),
                const CustomDivider(),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                          text: "Slack Name: ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: cvDetails.slackName,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18))
                    ],
                  ),
                ),
                const CustomDivider(),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                          text: "Github handle: ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: cvDetails.githubHandle,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushReplacementNamed(context, "/edit"),
        tooltip: "Edit CV",
        child: const Icon(Icons.edit),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 10),
        Divider(
          color: Colors.black,
          indent: 50,
          endIndent: 50,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
