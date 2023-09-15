import 'package:flutter/material.dart';
import 'cv_edit.dart';

class CvViewPage extends StatefulWidget {
  @override
  _CvViewPageState createState() => _CvViewPageState();
}

class _CvViewPageState extends State<CvViewPage> {
  final TextEditingController nameController =
      TextEditingController(text: "Aderemi Alo");
  final TextEditingController bioController = TextEditingController(
    text:
        "I'm a mobile applicaiton developer who specialises in Flutter and bringing lovely designs to mobile applcations.",
  );
  final TextEditingController slackNameController =
      TextEditingController(text: "AderemiAlo");
  final TextEditingController githubController =
      TextEditingController(text: "aderemi-alo");

  @override
  void initState() {
    super.initState();

    nameController.addListener(_update);
    bioController.addListener(_update);
    slackNameController.addListener(_update);
    githubController.addListener(_update);
  }

  @override
  void dispose() {
    nameController.removeListener(_update);
    bioController.removeListener(_update);
    slackNameController.removeListener(_update);
    githubController.removeListener(_update);

    nameController.dispose();
    bioController.dispose();
    slackNameController.dispose();
    githubController.dispose();
    super.dispose();
  }

  void _update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CV View Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  nameController.text,
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
                        text: bioController.text,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18))
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
                        text: slackNameController.text,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18))
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
                        text: githubController.text,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditPage(
                nameController: nameController,
                bioController: bioController,
                slackNameController: slackNameController,
                githubController: githubController,
              ),
            ),
          );
        },
        child: Icon(Icons.edit),
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
