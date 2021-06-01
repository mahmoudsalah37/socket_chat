class MessageModel {
  String user;
  String message;

  MessageModel({this.user, this.message});

  MessageModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] ?? '';
    message = json['message'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user ?? '';
    data['message'] = this.message ?? '';
    return data;
  }
}
