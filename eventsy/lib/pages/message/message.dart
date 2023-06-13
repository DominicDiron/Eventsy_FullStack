import '../../model/planner.dart';

class Message {
  Planners sender;
  Planners receiver;
  String content;
  DateTime timeStamp;

  Message(this.sender, this.receiver, this.content, this.timeStamp);
}
