class CVDetails {
  // Singleton instance
  static final CVDetails _instance = CVDetails._internal();

  // Private constructor
  CVDetails._internal();

  //CV Details
  String fullName = "Aderemi Alo";
  String slackName = "AderemiAlo";
  String githubHandle = "aderemi-alo";
  String personalBio =
      "Hey there, I am a mobile developer who specializes in building cross platform applications using Flutter to bring UI designs to reality. My hobbies are reading, anime and games.";

  // Getter for the singleton instance
  factory CVDetails() {
    return _instance;
  }

  void updateName(String name) {
    fullName = name;
  }

  void updateSlackName(String slackName) {
    this.slackName = slackName;
  }

  void updateGithubHandle(String githubHandle) {
    this.githubHandle = githubHandle;
  }

  void updatePersonalBio(String personalBio) {
    this.personalBio = personalBio;
  }
}
