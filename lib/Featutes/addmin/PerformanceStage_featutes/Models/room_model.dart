

//List<Rooms> RoomsFromJson(String str) => List<Rooms>.from(json.decode(str).map((x) => Rooms.fromJson(x)));
//String RoomsToJson(List<Rooms> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Rooms {
  Rooms({
    required this.seats,
    required this.Baht,
  });
  final String seats;
  final String Baht;
  // factory Rooms.fromJson(Map<String, dynamic> json) => Rooms(
  //   seats: json["seats"],
  //   Baht: json["Baht"],
  //
  // );
  // Map<String, dynamic> toJson() => {
  //   "seats": seats,
  //   "Baht": Baht
  // };
}
class dataA{
    static List<dynamic> a =[
      // Rooms(seats: "20",    Baht: "Baht"),
      // Rooms(seats: "seats", Baht: "Baht"),
      // Rooms(seats: "seats", Baht: "Baht"),
      {"name":"Room 1" ,"seats": "20","Baht": "100"},
      { "name":"Room 2","seats": "20", "Baht": "100"},
      { "name":"Room 3","seats": "20", "Baht": "100"},
// } ,
    ];
}


