enum Status{
  sentOut,
  stillAvailable,
  claimed,
  received
}

enum Type{
  offeringHelp,
  askingForHelp
}

class History{
  final String item;
  final String date;
  final int distance;
  final String position;
  final Status status;
  final Type type;
  
  const History({
    required this.item,
    required this.date,
    required this.distance,
    required this.position,
    required this.status,
    required this.type
  });
}