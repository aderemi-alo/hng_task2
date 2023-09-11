import 'package:flutter/material.dart';
import '../cv_details.dart';

class EditCV extends StatefulWidget {
  final CVDetails cvDetails;

  const EditCV({super.key, required this.cvDetails});

  @override
  State<EditCV> createState() => _EditCVState();
}

class _EditCVState extends State<EditCV> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController personalBioController = TextEditingController();
  TextEditingController slackNameController = TextEditingController();
  TextEditingController githubNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit CV"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomTextFormField(
                        controller: fullNameController,
                        label: "Full Name",
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        controller: slackNameController,
                        label: "Slack Name",
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        controller: githubNameController,
                        label: "Github Handle",
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: personalBioController,
                        maxLines: 6,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          hintText: "Type out your personal bio",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          label: const Text("Personal Bio"),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (fullNameController.text.trim().isNotEmpty) {
                      widget.cvDetails
                          .updateName(fullNameController.text.trim());
                    }
                    if (slackNameController.text.trim().isNotEmpty) {
                      widget.cvDetails
                          .updateSlackName(slackNameController.text.trim());
                    }
                    if (githubNameController.text.trim().isNotEmpty) {
                      widget.cvDetails
                          .updateGithubHandle(githubNameController.text.trim());
                    }
                    if (personalBioController.text.trim().isNotEmpty) {
                      widget.cvDetails
                          .updatePersonalBio(personalBioController.text.trim());
                    }
                    Navigator.pushReplacementNamed(context, "/");
                  },
                  child: const Text(
                    "Confirm",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(99)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 16)))
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.label,
  });

  final TextEditingController controller;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        hintText: label,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        label: Text(label),
      ),
    );
  }
}
