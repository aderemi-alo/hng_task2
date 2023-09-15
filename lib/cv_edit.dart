import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController bioController;
  final TextEditingController githubController;
  final TextEditingController slackNameController;

  const EditPage(
      {super.key,
      required this.nameController,
      required this.bioController,
      required this.githubController,
      required this.slackNameController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Page'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                  controller: nameController,
                  label: "Full Name",
                ),
                SizedBox(height: 20),
                CustomTextField(
                  controller: slackNameController,
                  label: "Slack Name",
                ),
                SizedBox(height: 20),
                CustomTextField(
                  controller: githubController,
                  label: "Github Controller",
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: bioController,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
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
