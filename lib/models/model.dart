// Class For User
class User {
  // constructor Function
  User({required this.name, required this.avatarUrl, required this.lastActive});

  // Variables
  final Name name;
  final String avatarUrl;
  final DateTime lastActive;
}

// Class For Name
class Name {
  Name({required this.first, required this.last});

  final String first;
  final String last;
  String get fullName => '$first $last';
}

// Class For Attachment
class Attachment {
  Attachment({required this.url});

  final String url;
}

// Class for Email
class Email {
  // Constructor Function
  Email({
    required this.content,
    this.attachments = const [],
    this.replies = 0,
    required this.recipients,
    required this.sender,
    required this.subject,
  });

  // Variables
  final User sender;
  final List<User> recipients;
  final String subject;
  final String content;
  final int replies;
  final List<Attachment> attachments;
}
